package com.maimieng.Bean;

import java.sql.Timestamp;
import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class MessageForm extends ActionForm {
	private int msID;
	private String msUserName;
	private Timestamp msDate;
	private String msTitle;
	private String msContent;
	
	public int getMsID() {
		return msID;
	}

	public void setMsID(int msID) {
		this.msID = msID;
	}

	public String getMsUserName() {
		return msUserName;
	}

	public void setMsUserName(String msUserName) {
		this.msUserName = msUserName;
	}

	public Timestamp getMsDate() {
		return msDate;
	}

	public void setMsDate(Timestamp msDate) {
		this.msDate = msDate;
	}

	public String getMsTitle() {
		return msTitle;
	}

	public void setMsTitle(String msTitle) {
		this.msTitle = msTitle;
	}

	public String getMsContent() {
		return msContent;
	}

	public void setMsContent(String msContent) {
		this.msContent = msContent;
	}
}
