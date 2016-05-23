package com.maimieng.bbs.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class MessageExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MessageExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andMsidIsNull() {
            addCriterion("MsID is null");
            return (Criteria) this;
        }

        public Criteria andMsidIsNotNull() {
            addCriterion("MsID is not null");
            return (Criteria) this;
        }

        public Criteria andMsidEqualTo(Integer value) {
            addCriterion("MsID =", value, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidNotEqualTo(Integer value) {
            addCriterion("MsID <>", value, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidGreaterThan(Integer value) {
            addCriterion("MsID >", value, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidGreaterThanOrEqualTo(Integer value) {
            addCriterion("MsID >=", value, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidLessThan(Integer value) {
            addCriterion("MsID <", value, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidLessThanOrEqualTo(Integer value) {
            addCriterion("MsID <=", value, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidIn(List<Integer> values) {
            addCriterion("MsID in", values, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidNotIn(List<Integer> values) {
            addCriterion("MsID not in", values, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidBetween(Integer value1, Integer value2) {
            addCriterion("MsID between", value1, value2, "msid");
            return (Criteria) this;
        }

        public Criteria andMsidNotBetween(Integer value1, Integer value2) {
            addCriterion("MsID not between", value1, value2, "msid");
            return (Criteria) this;
        }

        public Criteria andMsusernameIsNull() {
            addCriterion("MsUserName is null");
            return (Criteria) this;
        }

        public Criteria andMsusernameIsNotNull() {
            addCriterion("MsUserName is not null");
            return (Criteria) this;
        }

        public Criteria andMsusernameEqualTo(String value) {
            addCriterion("MsUserName =", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameNotEqualTo(String value) {
            addCriterion("MsUserName <>", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameGreaterThan(String value) {
            addCriterion("MsUserName >", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameGreaterThanOrEqualTo(String value) {
            addCriterion("MsUserName >=", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameLessThan(String value) {
            addCriterion("MsUserName <", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameLessThanOrEqualTo(String value) {
            addCriterion("MsUserName <=", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameLike(String value) {
            addCriterion("MsUserName like", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameNotLike(String value) {
            addCriterion("MsUserName not like", value, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameIn(List<String> values) {
            addCriterion("MsUserName in", values, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameNotIn(List<String> values) {
            addCriterion("MsUserName not in", values, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameBetween(String value1, String value2) {
            addCriterion("MsUserName between", value1, value2, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsusernameNotBetween(String value1, String value2) {
            addCriterion("MsUserName not between", value1, value2, "msusername");
            return (Criteria) this;
        }

        public Criteria andMsdateIsNull() {
            addCriterion("MsDate is null");
            return (Criteria) this;
        }

        public Criteria andMsdateIsNotNull() {
            addCriterion("MsDate is not null");
            return (Criteria) this;
        }

        public Criteria andMsdateEqualTo(Date value) {
            addCriterion("MsDate =", value, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateNotEqualTo(Date value) {
            addCriterion("MsDate <>", value, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateGreaterThan(Date value) {
            addCriterion("MsDate >", value, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateGreaterThanOrEqualTo(Date value) {
            addCriterion("MsDate >=", value, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateLessThan(Date value) {
            addCriterion("MsDate <", value, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateLessThanOrEqualTo(Date value) {
            addCriterion("MsDate <=", value, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateIn(List<Date> values) {
            addCriterion("MsDate in", values, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateNotIn(List<Date> values) {
            addCriterion("MsDate not in", values, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateBetween(Date value1, Date value2) {
            addCriterion("MsDate between", value1, value2, "msdate");
            return (Criteria) this;
        }

        public Criteria andMsdateNotBetween(Date value1, Date value2) {
            addCriterion("MsDate not between", value1, value2, "msdate");
            return (Criteria) this;
        }

        public Criteria andMstitleIsNull() {
            addCriterion("MsTitle is null");
            return (Criteria) this;
        }

        public Criteria andMstitleIsNotNull() {
            addCriterion("MsTitle is not null");
            return (Criteria) this;
        }

        public Criteria andMstitleEqualTo(String value) {
            addCriterion("MsTitle =", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleNotEqualTo(String value) {
            addCriterion("MsTitle <>", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleGreaterThan(String value) {
            addCriterion("MsTitle >", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleGreaterThanOrEqualTo(String value) {
            addCriterion("MsTitle >=", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleLessThan(String value) {
            addCriterion("MsTitle <", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleLessThanOrEqualTo(String value) {
            addCriterion("MsTitle <=", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleLike(String value) {
            addCriterion("MsTitle like", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleNotLike(String value) {
            addCriterion("MsTitle not like", value, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleIn(List<String> values) {
            addCriterion("MsTitle in", values, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleNotIn(List<String> values) {
            addCriterion("MsTitle not in", values, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleBetween(String value1, String value2) {
            addCriterion("MsTitle between", value1, value2, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMstitleNotBetween(String value1, String value2) {
            addCriterion("MsTitle not between", value1, value2, "mstitle");
            return (Criteria) this;
        }

        public Criteria andMscontentIsNull() {
            addCriterion("MsContent is null");
            return (Criteria) this;
        }

        public Criteria andMscontentIsNotNull() {
            addCriterion("MsContent is not null");
            return (Criteria) this;
        }

        public Criteria andMscontentEqualTo(String value) {
            addCriterion("MsContent =", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentNotEqualTo(String value) {
            addCriterion("MsContent <>", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentGreaterThan(String value) {
            addCriterion("MsContent >", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentGreaterThanOrEqualTo(String value) {
            addCriterion("MsContent >=", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentLessThan(String value) {
            addCriterion("MsContent <", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentLessThanOrEqualTo(String value) {
            addCriterion("MsContent <=", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentLike(String value) {
            addCriterion("MsContent like", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentNotLike(String value) {
            addCriterion("MsContent not like", value, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentIn(List<String> values) {
            addCriterion("MsContent in", values, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentNotIn(List<String> values) {
            addCriterion("MsContent not in", values, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentBetween(String value1, String value2) {
            addCriterion("MsContent between", value1, value2, "mscontent");
            return (Criteria) this;
        }

        public Criteria andMscontentNotBetween(String value1, String value2) {
            addCriterion("MsContent not between", value1, value2, "mscontent");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}