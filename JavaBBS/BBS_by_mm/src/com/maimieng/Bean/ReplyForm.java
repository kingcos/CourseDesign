package com.maimieng.Bean;

import java.sql.Timestamp;

import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class ReplyForm extends ActionForm {
	private int reID;

	public int getReID() {
		return reID;
	}

	public void setReID(int reID) {
		this.reID = reID;
	}

	public int getReMsID() {
		return reMsID;
	}

	public void setReMsID(int reMsID) {
		this.reMsID = reMsID;
	}

	public String getReUserName() {
		return reUserName;
	}

	public void setReUserName(String reUserName) {
		this.reUserName = reUserName;
	}

	public Timestamp getReDate() {
		return reDate;
	}

	public void setReDate(Timestamp reDate) {
		this.reDate = reDate;
	}

	public String getReContent() {
		return reContent;
	}

	public void setReContent(String reContent) {
		this.reContent = reContent;
	}

	private int reMsID;
	private String reUserName;
	private Timestamp reDate;
	private String reContent;
}
