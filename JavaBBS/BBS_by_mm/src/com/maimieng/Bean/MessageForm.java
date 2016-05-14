package com.maimieng.Bean;

import java.util.Date;
import org.apache.struts.action.ActionForm;

@SuppressWarnings("serial")
public class MessageForm extends ActionForm {
	private int msID;
	private String msUserName;
	private Date msDate;
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

	public Date getMsDate() {
		return msDate;
	}

	public void setMsDate(Date msDate) {
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
