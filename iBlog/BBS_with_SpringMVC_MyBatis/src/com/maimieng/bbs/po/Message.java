package com.maimieng.bbs.po;

import java.util.Date;

public class Message {
    private Integer msid;

    private String msusername;

    private Date msdate;

    private String mstitle;

    private String mscontent;

    public Integer getMsid() {
        return msid;
    }

    public void setMsid(Integer msid) {
        this.msid = msid;
    }

    public String getMsusername() {
        return msusername;
    }

    public void setMsusername(String msusername) {
        this.msusername = msusername == null ? null : msusername.trim();
    }

    public Date getMsdate() {
        return msdate;
    }

    public void setMsdate(Date msdate) {
        this.msdate = msdate;
    }

    public String getMstitle() {
        return mstitle;
    }

    public void setMstitle(String mstitle) {
        this.mstitle = mstitle == null ? null : mstitle.trim();
    }

    public String getMscontent() {
        return mscontent;
    }

    public void setMscontent(String mscontent) {
        this.mscontent = mscontent == null ? null : mscontent.trim();
    }
}