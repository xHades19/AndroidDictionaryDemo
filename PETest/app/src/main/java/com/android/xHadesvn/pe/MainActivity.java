package com.android.xHadesvn.pe;

/**
 * Created by xHadesvn on 05/10/2017.
 */

import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.BaseColumns;
import android.support.v4.widget.CursorAdapter;
import android.support.v4.widget.SimpleCursorAdapter;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;


public class MainActivity extends AppCompatActivity {

    private TextView txtMean;
    private TextView txtWord;
    private Button btnPre;
    private Button btnNext;
    private ProgressDialog pDialog;
    private ArrayList<UniversalDict> universalDicts;
    private static int currentIndex = 0;
    private Toolbar toolbar;
    private final static String IP = "192.168.100.8";
    private String[] strArrData = {"No Suggestions"};
    private SimpleCursorAdapter myAdapter;

    SearchView searchView = null;

    private class GetData extends AsyncTask<String, String, String> {

        @Override
        protected void onPreExecute() {
            super.onPreExecute();
            pDialog = new ProgressDialog(MainActivity.this);
            pDialog.setMessage("Please wait...");
            pDialog.setCancelable(false);
            pDialog.show();

        }

        @Override
        protected String doInBackground(String... arg0) {
            HttpURLConnection connection = null;
            BufferedReader reader = null;
            universalDicts = new ArrayList<>();
            currentIndex = 0;
            try {
                URL url = new URL(arg0[0]);
                connection = (HttpURLConnection) url.openConnection();
                connection.connect();

                InputStream inputStream = connection.getInputStream();

                reader = new BufferedReader(new InputStreamReader(inputStream));

                StringBuffer buffer = new StringBuffer();
                String line = reader.readLine();

                while (line != null) {
                    buffer.append(line);
                    line = reader.readLine();
                }

                JSONArray jArray = new JSONArray(buffer.toString());
                if (jArray != null) {
                    strArrData = new String[jArray.length()];
                    for (int i = 0; i < jArray.length(); i++) {
                        JSONObject e = jArray.getJSONObject(i);

                        int id = e.getInt("id");
                        String word = e.getString("word");
                        String meanings = e.getString("meanings");
                        String lang = e.getString("lang");

                        UniversalDict universalDict = new UniversalDict(id, word, meanings, lang);
                        universalDicts.add(universalDict);
                        strArrData[i] = word;
                    }
                }

                return buffer.toString();

            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {

                if (connection != null) {
                    connection.disconnect();
                }
                try {
                    if (reader != null) {
                        reader.close();
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            return null;
        }

        @Override
        protected void onPostExecute(String result) {
            super.onPostExecute(result);
            if (pDialog.isShowing())
                pDialog.dismiss();

            txtMean.setText(universalDicts.get(currentIndex).getMeanings());
            txtWord.setText(universalDicts.get(currentIndex).getWord());
        }

    }
    int fEnEn = 1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        txtMean = (TextView) findViewById(R.id.txtMean);
        txtWord = (TextView) findViewById(R.id.txtWord);
        btnNext = (Button) findViewById(R.id.btnNext);
        btnPre = (Button) findViewById(R.id.btnPre);

        final String[] from = new String[] {"word"};
        final int[] to = new int[] {android.R.id.text1};

        myAdapter = new SimpleCursorAdapter(MainActivity.this, android.R.layout.simple_spinner_dropdown_item, null, from, to, CursorAdapter.FLAG_REGISTER_CONTENT_OBSERVER);

        new GetData().execute("http://"+IP+"/pe-android/index.php?lang=1");

        btnNext.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                currentIndex++;
                if (currentIndex > universalDicts.size() - 1) {
                    currentIndex = 0;
                }
                txtMean.setText(universalDicts.get(currentIndex).getMeanings());
                txtWord.setText(universalDicts.get(currentIndex).getWord());
            }
        });

        btnPre.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                currentIndex--;

                if (currentIndex < 0) {
                    currentIndex = universalDicts.size() - 1;
                }
                txtMean.setText(universalDicts.get(currentIndex).getMeanings());
                txtWord.setText(universalDicts.get(currentIndex).getWord());
            }
        });

    }

    private int find(String word){
        for(int i = 0; i < universalDicts.size();i++){
            if(universalDicts.get(i).getWord().equalsIgnoreCase(word)){
                return i;
            }
        }
        return -1;
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);

        MenuItem searchItem = menu.findItem(R.id.action_search);
        SearchManager searchManager = (SearchManager) MainActivity.this.getSystemService(Context.SEARCH_SERVICE);
        if (searchItem != null) {
            searchView = (SearchView) searchItem.getActionView();
        }
        if (searchView != null) {

            searchView.setSearchableInfo(searchManager.getSearchableInfo(MainActivity.this.getComponentName()));
            searchView.setIconified(false);
            searchView.setSuggestionsAdapter(myAdapter);

            searchView.setOnSuggestionListener(new SearchView.OnSuggestionListener() {
                @Override
                public boolean onSuggestionClick(int position) {

                    CursorAdapter ca = searchView.getSuggestionsAdapter();
                    Cursor cursor = ca.getCursor();
                    cursor.moveToPosition(position);
                   int indexUD = find(cursor.getString(cursor.getColumnIndex("word")));
                    if(indexUD != -1){
                        UniversalDict ud = universalDicts.get(indexUD);
                        currentIndex = indexUD;
                        txtMean.setText(ud.getMeanings());
                        txtWord.setText(ud.getWord());
                    }
                    searchView.setQuery(cursor.getString(cursor.getColumnIndex("word")),false);
                    return true;
                }

                @Override
                public boolean onSuggestionSelect(int position) {
                    return true;
                }
            });
            searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
                @Override
                public boolean onQueryTextSubmit(String s) {
                    return false;
                }

                @Override
                public boolean onQueryTextChange(String s) {

                    final MatrixCursor mc = new MatrixCursor(new String[]{ BaseColumns._ID, "word" });
                    for (int i=0; i<strArrData.length; i++) {
                        if (strArrData[i].toLowerCase().startsWith(s.toLowerCase())){
                            mc.addRow(new Object[] {i, strArrData[i]});
                        }
                    }
                    myAdapter.changeCursor(mc);
                    return false;
                }
            });
        }

        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.rd_en_en) {
            item.setChecked(true);
            fEnEn = 1;
        }

        if (id == R.id.rd_en_vn) {
            item.setChecked(true);
            fEnEn = 0;
        }
        new GetData().execute("http://"+IP+"/pe-android/index.php?lang=" + fEnEn);
        if(searchView != null){
            searchView.setQuery("",false);
        }
        Toast.makeText(MainActivity.this, fEnEn == 1 ? "EN - EN" : "EN - VN", Toast.LENGTH_SHORT).show();
        return super.onOptionsItemSelected(item);
    }

    @Override
    protected void onNewIntent(Intent intent) {
        if (Intent.ACTION_SEARCH.equals(intent.getAction())) {
            String query = intent.getStringExtra(SearchManager.QUERY);
            if (searchView != null) {
                searchView.clearFocus();
            }
        }
    }
}

