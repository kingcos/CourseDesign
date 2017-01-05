package com.maimieng.Action;

import com.maimieng.Bean.Message;
import com.maimieng.Bean.Reply;
import com.maimieng.Dao.MessageDao;
import com.maimieng.Dao.ReplyDao;
import com.maimieng.Dao.UserDao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class MessageAction extends ActionSupport {

    private static final long serialVersionUID = 1L;
    private Message message;

    public String listms() throws Exception {
        String result = SUCCESS;

        MessageDao messageDao = new MessageDao();
        UserDao userDao = new UserDao();

        String keyword = "";
        if (ActionContext.getContext().getParameters().get("keyword") != null) {
            keyword = ((String[]) ActionContext.getContext().getParameters().get("keyword"))[0];
        }
        String currentPageStr = "";
        if (ActionContext.getContext().getParameters().get("pageNum") != null) {
            currentPageStr = ((String[]) ActionContext.getContext().getParameters().get("pageNum"))[0];
        }

        int currentPage;

        if (currentPageStr == null || currentPageStr.equals("")) {
            currentPage = 1;
        } else {
            currentPage = Integer.parseInt(currentPageStr);
        }

        ActionContext.getContext().getSession().put("userCount", userDao.countUsers());

        int messageCount = messageDao.countMessages(keyword);
        int startIndex = (currentPage - 1) * 5;

        ActionContext.getContext().getSession().put("messageCount", messageCount);

        List<Message> msList = messageDao.listMessages(keyword, startIndex, 5);

        ActionContext.getContext().getSession().put("msList", msList);
        return result;
    }

    public String createms() throws Exception {
        String result = SUCCESS;

        String msUserName = (String) ActionContext.getContext().getSession().get("userName");
        String msTitle = message.getMsTitle();
        String msContent = message.getMsContent();

        Date date = new Date();
        String formatDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date);
        Timestamp msDate = Timestamp.valueOf(formatDate);

        if (msTitle == null || msTitle.equals("") || msContent == null || msContent.equals("")) {
            ActionContext.getContext().put("ErrorMessage", "标题和内容不得为空！");
            result = "Failure";
        } else {
            MessageDao messageDao = new MessageDao();
            messageDao.saveMessage(msUserName, msDate, msTitle, msContent);
        }
        return result;
    }

    public String getms() throws Exception {
        String result = "Failure";

        int msID;
        Object temp = ActionContext.getContext().getParameters().get("msID");

        if (temp == null || temp.equals("")) {
//			msID = (Integer) ActionContext.getContext().getSession().get("MsID");
            msID = (Integer) ActionContext.getContext().get("msID");


        } else {
            msID = Integer.parseInt(((String[]) ActionContext.getContext().getParameters().get("msID"))[0]);
//			ActionContext.getContext().getSession().put("MsID", msID);
            ActionContext.getContext().put("msID", msID);
        }

        MessageDao messageDao = new MessageDao();
        ReplyDao replyDao = new ReplyDao();

        message = messageDao.getMessage(msID);
        List<Reply> list = replyDao.listReply(msID);

        if (message != null) {
            result = SUCCESS;
//			ActionContext.getContext().getSession().put("reList", list);
//			ActionContext.getContext().getSession().put("Message", message);
//			ActionContext.getContext().getSession().put("MsID", message.getMsID());
            ActionContext.getContext().put("reList", list);
            ActionContext.getContext().put("Message", message);
            ActionContext.getContext().put("msID", message.getMsID());
        }
        return result;
    }

    public String deletems() throws Exception {
        int msID = Integer.parseInt(((String[]) ActionContext.getContext().getParameters().get("msID"))[0]);

        MessageDao messageDao = new MessageDao();
        ReplyDao replyDao = new ReplyDao();

        messageDao.deleteMessage(msID);
        replyDao.deleteReply(msID);
        return SUCCESS;
    }

    public Message getMessage() {
        return message;
    }

    public void setMessage(Message message) {
        this.message = message;
    }


}
