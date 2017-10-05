package com.android.xHadesvn.pe;

/**
 * Created by xHadesvn on 05/10/2017.
 */

public class UniversalDict {

    private int id;
    private String word;
    private String meanings;
    private String lang;

    public UniversalDict(int id, String word, String meanings, String lang) {
        this.id = id;
        this.word = word;
        this.meanings = meanings;
        this.lang = lang;
    }

    public UniversalDict(){

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public String getMeanings() {
        return meanings;
    }

    public void setMeanings(String meanings) {
        this.meanings = meanings;
    }

    public String getLang() {
        return lang;
    }

    public void setLang(String lang) {
        this.lang = lang;
    }
}
