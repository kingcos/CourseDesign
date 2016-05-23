package com.maimieng.bbs.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReplyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReplyExample() {
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

        public Criteria andReidIsNull() {
            addCriterion("ReID is null");
            return (Criteria) this;
        }

        public Criteria andReidIsNotNull() {
            addCriterion("ReID is not null");
            return (Criteria) this;
        }

        public Criteria andReidEqualTo(Integer value) {
            addCriterion("ReID =", value, "reid");
            return (Criteria) this;
        }

        public Criteria andReidNotEqualTo(Integer value) {
            addCriterion("ReID <>", value, "reid");
            return (Criteria) this;
        }

        public Criteria andReidGreaterThan(Integer value) {
            addCriterion("ReID >", value, "reid");
            return (Criteria) this;
        }

        public Criteria andReidGreaterThanOrEqualTo(Integer value) {
            addCriterion("ReID >=", value, "reid");
            return (Criteria) this;
        }

        public Criteria andReidLessThan(Integer value) {
            addCriterion("ReID <", value, "reid");
            return (Criteria) this;
        }

        public Criteria andReidLessThanOrEqualTo(Integer value) {
            addCriterion("ReID <=", value, "reid");
            return (Criteria) this;
        }

        public Criteria andReidIn(List<Integer> values) {
            addCriterion("ReID in", values, "reid");
            return (Criteria) this;
        }

        public Criteria andReidNotIn(List<Integer> values) {
            addCriterion("ReID not in", values, "reid");
            return (Criteria) this;
        }

        public Criteria andReidBetween(Integer value1, Integer value2) {
            addCriterion("ReID between", value1, value2, "reid");
            return (Criteria) this;
        }

        public Criteria andReidNotBetween(Integer value1, Integer value2) {
            addCriterion("ReID not between", value1, value2, "reid");
            return (Criteria) this;
        }

        public Criteria andRemsidIsNull() {
            addCriterion("ReMsID is null");
            return (Criteria) this;
        }

        public Criteria andRemsidIsNotNull() {
            addCriterion("ReMsID is not null");
            return (Criteria) this;
        }

        public Criteria andRemsidEqualTo(Integer value) {
            addCriterion("ReMsID =", value, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidNotEqualTo(Integer value) {
            addCriterion("ReMsID <>", value, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidGreaterThan(Integer value) {
            addCriterion("ReMsID >", value, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidGreaterThanOrEqualTo(Integer value) {
            addCriterion("ReMsID >=", value, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidLessThan(Integer value) {
            addCriterion("ReMsID <", value, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidLessThanOrEqualTo(Integer value) {
            addCriterion("ReMsID <=", value, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidIn(List<Integer> values) {
            addCriterion("ReMsID in", values, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidNotIn(List<Integer> values) {
            addCriterion("ReMsID not in", values, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidBetween(Integer value1, Integer value2) {
            addCriterion("ReMsID between", value1, value2, "remsid");
            return (Criteria) this;
        }

        public Criteria andRemsidNotBetween(Integer value1, Integer value2) {
            addCriterion("ReMsID not between", value1, value2, "remsid");
            return (Criteria) this;
        }

        public Criteria andReusernameIsNull() {
            addCriterion("ReUserName is null");
            return (Criteria) this;
        }

        public Criteria andReusernameIsNotNull() {
            addCriterion("ReUserName is not null");
            return (Criteria) this;
        }

        public Criteria andReusernameEqualTo(String value) {
            addCriterion("ReUserName =", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameNotEqualTo(String value) {
            addCriterion("ReUserName <>", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameGreaterThan(String value) {
            addCriterion("ReUserName >", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameGreaterThanOrEqualTo(String value) {
            addCriterion("ReUserName >=", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameLessThan(String value) {
            addCriterion("ReUserName <", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameLessThanOrEqualTo(String value) {
            addCriterion("ReUserName <=", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameLike(String value) {
            addCriterion("ReUserName like", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameNotLike(String value) {
            addCriterion("ReUserName not like", value, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameIn(List<String> values) {
            addCriterion("ReUserName in", values, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameNotIn(List<String> values) {
            addCriterion("ReUserName not in", values, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameBetween(String value1, String value2) {
            addCriterion("ReUserName between", value1, value2, "reusername");
            return (Criteria) this;
        }

        public Criteria andReusernameNotBetween(String value1, String value2) {
            addCriterion("ReUserName not between", value1, value2, "reusername");
            return (Criteria) this;
        }

        public Criteria andRedateIsNull() {
            addCriterion("ReDate is null");
            return (Criteria) this;
        }

        public Criteria andRedateIsNotNull() {
            addCriterion("ReDate is not null");
            return (Criteria) this;
        }

        public Criteria andRedateEqualTo(Date value) {
            addCriterion("ReDate =", value, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateNotEqualTo(Date value) {
            addCriterion("ReDate <>", value, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateGreaterThan(Date value) {
            addCriterion("ReDate >", value, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateGreaterThanOrEqualTo(Date value) {
            addCriterion("ReDate >=", value, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateLessThan(Date value) {
            addCriterion("ReDate <", value, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateLessThanOrEqualTo(Date value) {
            addCriterion("ReDate <=", value, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateIn(List<Date> values) {
            addCriterion("ReDate in", values, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateNotIn(List<Date> values) {
            addCriterion("ReDate not in", values, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateBetween(Date value1, Date value2) {
            addCriterion("ReDate between", value1, value2, "redate");
            return (Criteria) this;
        }

        public Criteria andRedateNotBetween(Date value1, Date value2) {
            addCriterion("ReDate not between", value1, value2, "redate");
            return (Criteria) this;
        }

        public Criteria andRecontentIsNull() {
            addCriterion("ReContent is null");
            return (Criteria) this;
        }

        public Criteria andRecontentIsNotNull() {
            addCriterion("ReContent is not null");
            return (Criteria) this;
        }

        public Criteria andRecontentEqualTo(String value) {
            addCriterion("ReContent =", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentNotEqualTo(String value) {
            addCriterion("ReContent <>", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentGreaterThan(String value) {
            addCriterion("ReContent >", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentGreaterThanOrEqualTo(String value) {
            addCriterion("ReContent >=", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentLessThan(String value) {
            addCriterion("ReContent <", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentLessThanOrEqualTo(String value) {
            addCriterion("ReContent <=", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentLike(String value) {
            addCriterion("ReContent like", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentNotLike(String value) {
            addCriterion("ReContent not like", value, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentIn(List<String> values) {
            addCriterion("ReContent in", values, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentNotIn(List<String> values) {
            addCriterion("ReContent not in", values, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentBetween(String value1, String value2) {
            addCriterion("ReContent between", value1, value2, "recontent");
            return (Criteria) this;
        }

        public Criteria andRecontentNotBetween(String value1, String value2) {
            addCriterion("ReContent not between", value1, value2, "recontent");
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