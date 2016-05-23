package com.maimieng.bbs.po;

import java.util.Date;

public class Reply {
    private Integer reid;

    private Integer remsid;

    private String reusername;

    private Date redate;

    private String recontent;

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public Integer getRemsid() {
        return remsid;
    }

    public void setRemsid(Integer remsid) {
        this.remsid = remsid;
    }

    public String getReusername() {
        return reusername;
    }

    public void setReusername(String reusername) {
        this.reusername = reusername == null ? null : reusername.trim();
    }

    public Date getRedate() {
        return redate;
    }

    public void setRedate(Date redate) {
        this.redate = redate;
    }

    public String getRecontent() {
        return recontent;
    }

    public void setRecontent(String recontent) {
        this.recontent = recontent == null ? null : recontent.trim();
    }
}