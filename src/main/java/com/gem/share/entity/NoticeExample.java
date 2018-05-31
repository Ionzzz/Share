package com.gem.share.entity;

import java.util.ArrayList;
import java.util.List;

public class NoticeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public NoticeExample() {
    }

    @Override
    public String toString() {
        return "NoticeExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        NoticeExample that = (NoticeExample) o;

        if (distinct != that.distinct) return false;
        if (orderByClause != null ? !orderByClause.equals(that.orderByClause) : that.orderByClause != null)
            return false;
        return oredCriteria != null ? oredCriteria.equals(that.oredCriteria) : that.oredCriteria == null;
    }

    @Override
    public int hashCode() {
        int result = orderByClause != null ? orderByClause.hashCode() : 0;
        result = 31 * result + (distinct ? 1 : 0);
        result = 31 * result + (oredCriteria != null ? oredCriteria.hashCode() : 0);
        return result;
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

        public Criteria andNoticeIdIsNull() {
            addCriterion("notice_id is null");
            return (Criteria) this;
        }

        public Criteria andNoticeIdIsNotNull() {
            addCriterion("notice_id is not null");
            return (Criteria) this;
        }

        public Criteria andNoticeIdEqualTo(Integer value) {
            addCriterion("notice_id =", value, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdNotEqualTo(Integer value) {
            addCriterion("notice_id <>", value, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdGreaterThan(Integer value) {
            addCriterion("notice_id >", value, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("notice_id >=", value, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdLessThan(Integer value) {
            addCriterion("notice_id <", value, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdLessThanOrEqualTo(Integer value) {
            addCriterion("notice_id <=", value, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdIn(List<Integer> values) {
            addCriterion("notice_id in", values, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdNotIn(List<Integer> values) {
            addCriterion("notice_id not in", values, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdBetween(Integer value1, Integer value2) {
            addCriterion("notice_id between", value1, value2, "noticeId");
            return (Criteria) this;
        }

        public Criteria andNoticeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("notice_id not between", value1, value2, "noticeId");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andNoticecontentIsNull() {
            addCriterion("noticeContent is null");
            return (Criteria) this;
        }

        public Criteria andNoticecontentIsNotNull() {
            addCriterion("noticeContent is not null");
            return (Criteria) this;
        }

        public Criteria andNoticecontentEqualTo(String value) {
            addCriterion("noticeContent =", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentNotEqualTo(String value) {
            addCriterion("noticeContent <>", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentGreaterThan(String value) {
            addCriterion("noticeContent >", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentGreaterThanOrEqualTo(String value) {
            addCriterion("noticeContent >=", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentLessThan(String value) {
            addCriterion("noticeContent <", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentLessThanOrEqualTo(String value) {
            addCriterion("noticeContent <=", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentLike(String value) {
            addCriterion("noticeContent like", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentNotLike(String value) {
            addCriterion("noticeContent not like", value, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentIn(List<String> values) {
            addCriterion("noticeContent in", values, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentNotIn(List<String> values) {
            addCriterion("noticeContent not in", values, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentBetween(String value1, String value2) {
            addCriterion("noticeContent between", value1, value2, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticecontentNotBetween(String value1, String value2) {
            addCriterion("noticeContent not between", value1, value2, "noticecontent");
            return (Criteria) this;
        }

        public Criteria andNoticestatusIsNull() {
            addCriterion("noticeStatus is null");
            return (Criteria) this;
        }

        public Criteria andNoticestatusIsNotNull() {
            addCriterion("noticeStatus is not null");
            return (Criteria) this;
        }

        public Criteria andNoticestatusEqualTo(Integer value) {
            addCriterion("noticeStatus =", value, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusNotEqualTo(Integer value) {
            addCriterion("noticeStatus <>", value, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusGreaterThan(Integer value) {
            addCriterion("noticeStatus >", value, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("noticeStatus >=", value, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusLessThan(Integer value) {
            addCriterion("noticeStatus <", value, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusLessThanOrEqualTo(Integer value) {
            addCriterion("noticeStatus <=", value, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusIn(List<Integer> values) {
            addCriterion("noticeStatus in", values, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusNotIn(List<Integer> values) {
            addCriterion("noticeStatus not in", values, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusBetween(Integer value1, Integer value2) {
            addCriterion("noticeStatus between", value1, value2, "noticestatus");
            return (Criteria) this;
        }

        public Criteria andNoticestatusNotBetween(Integer value1, Integer value2) {
            addCriterion("noticeStatus not between", value1, value2, "noticestatus");
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