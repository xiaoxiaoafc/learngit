package com.smallsell.entity;

public class Menu {
    private Integer id;

    private String meun_name;

    private String url;

    private Integer parent_id;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMeun_name() {
        return meun_name;
    }

    public void setMeun_name(String meun_name) {
        this.meun_name = meun_name == null ? null : meun_name.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getParent_id() {
        return parent_id;
    }

    public void setParent_id(Integer parent_id) {
        this.parent_id = parent_id;
    }
}