package com.maimieng.Action;

import com.maimieng.Bean.Reply;
import com.maimieng.Dao.ReplyDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ReplyAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
    private Reply reply;

    public String reply() throws Exception {
        String result = SUCCESS;

//		int reMsID = (Integer) ActionContext.getContext().getSession().get("MsID");
//		int reMsID = (Integer) ActionContext.getContext().get("MsID");
        int reMsID = Integer.parseInt(((String[]) ActionContext.getContext().getParameters().get("msID"))[0]);
        ActionContext.getContext().put("msID", reMsID);
        String reUserName = (String) ActionContext.getContext().getSession().get("userName");
        String reContent = reply.getReContent();

        Date date = new Date();
        String formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
        Timestamp reDate = Timestamp.valueOf(formatDate);

        if (reContent == null || reContent.equals("")) {
            ActionContext.getContext().put("ErrorMessage", "内容不得为空！");
            result = "Failure";
        } else {
            ReplyDao replyDao = new ReplyDao();
            replyDao.saveReply(reMsID, reUserName, reDate, reContent);
        }
        return result;
    }

    public Reply getReply() {
        return reply;
    }

    public void setReply(Reply reply) {
        this.reply = reply;
    }

}
