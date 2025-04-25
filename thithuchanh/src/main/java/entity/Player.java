package com.t2308e.thithuchanh.entity;

public class Player {
    private int id; // player_id
    private String name;
    private String fullName;
    private String age;
    private int indexId;      // FK to indexer.index_id
    private String indexName; // indexer.name (optional for display)
    private float value;      // from player_index.value

    public Player() {}

    public Player(int id, String name, String fullName, String age, int indexId, String indexName, float value) {
        this.id = id;
        this.name = name;
        this.fullName = fullName;
        this.age = age;
        this.indexId = indexId;
        this.indexName = indexName;
        this.value = value;
    }

    // Getters & Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public int getIndexId() {
        return indexId;
    }

    public void setIndexId(int indexId) {
        this.indexId = indexId;
    }

    public String getIndexName() {
        return indexName;
    }

    public void setIndexName(String indexName) {
        this.indexName = indexName;
    }

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }
}
