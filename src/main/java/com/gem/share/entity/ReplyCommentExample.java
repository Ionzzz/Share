package com.gem.share.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ReplyCommentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ReplyCommentExample() {
    }

    @Override
    public String toString() {
        return "ReplyCommentExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ReplyCommentExample that = (ReplyCommentExample) o;

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

        public Criteria andReplycommentIdIsNull() {
            addCriterion("replyComment_id is null");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdIsNotNull() {
            addCriterion("replyComment_id is not null");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdEqualTo(Integer value) {
            addCriterion("replyComment_id =", value, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdNotEqualTo(Integer value) {
            addCriterion("replyComment_id <>", value, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdGreaterThan(Integer value) {
            addCriterion("replyComment_id >", value, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("replyComment_id >=", value, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdLessThan(Integer value) {
            addCriterion("replyComment_id <", value, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdLessThanOrEqualTo(Integer value) {
            addCriterion("replyComment_id <=", value, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdIn(List<Integer> values) {
            addCriterion("replyComment_id in", values, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdNotIn(List<Integer> values) {
            addCriterion("replyComment_id not in", values, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdBetween(Integer value1, Integer value2) {
            addCriterion("replyComment_id between", value1, value2, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andReplycommentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("replyComment_id not between", value1, value2, "replycommentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdIsNull() {
            addCriterion("comment_id is null");
            return (Criteria) this;
        }

        public Criteria andCommentIdIsNotNull() {
            addCriterion("comment_id is not null");
            return (Criteria) this;
        }

        public Criteria andCommentIdEqualTo(Integer value) {
            addCriterion("comment_id =", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotEqualTo(Integer value) {
            addCriterion("comment_id <>", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdGreaterThan(Integer value) {
            addCriterion("comment_id >", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("comment_id >=", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdLessThan(Integer value) {
            addCriterion("comment_id <", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdLessThanOrEqualTo(Integer value) {
            addCriterion("comment_id <=", value, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdIn(List<Integer> values) {
            addCriterion("comment_id in", values, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotIn(List<Integer> values) {
            addCriterion("comment_id not in", values, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdBetween(Integer value1, Integer value2) {
            addCriterion("comment_id between", value1, value2, "commentId");
            return (Criteria) this;
        }

        public Criteria andCommentIdNotBetween(Integer value1, Integer value2) {
            addCriterion("comment_id not between", value1, value2, "commentId");
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

        public Criteria andReplycommentcontentIsNull() {
            addCriterion("replyCommentContent is null");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentIsNotNull() {
            addCriterion("replyCommentContent is not null");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentEqualTo(String value) {
            addCriterion("replyCommentContent =", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentNotEqualTo(String value) {
            addCriterion("replyCommentContent <>", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentGreaterThan(String value) {
            addCriterion("replyCommentContent >", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentGreaterThanOrEqualTo(String value) {
            addCriterion("replyCommentContent >=", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentLessThan(String value) {
            addCriterion("replyCommentContent <", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentLessThanOrEqualTo(String value) {
            addCriterion("replyCommentContent <=", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentLike(String value) {
            addCriterion("replyCommentContent like", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentNotLike(String value) {
            addCriterion("replyCommentContent not like", value, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentIn(List<String> values) {
            addCriterion("replyCommentContent in", values, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentNotIn(List<String> values) {
            addCriterion("replyCommentContent not in", values, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentBetween(String value1, String value2) {
            addCriterion("replyCommentContent between", value1, value2, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommentcontentNotBetween(String value1, String value2) {
            addCriterion("replyCommentContent not between", value1, value2, "replycommentcontent");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeIsNull() {
            addCriterion("replyCommentTime is null");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeIsNotNull() {
            addCriterion("replyCommentTime is not null");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeEqualTo(Date value) {
            addCriterion("replyCommentTime =", value, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeNotEqualTo(Date value) {
            addCriterion("replyCommentTime <>", value, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeGreaterThan(Date value) {
            addCriterion("replyCommentTime >", value, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeGreaterThanOrEqualTo(Date value) {
            addCriterion("replyCommentTime >=", value, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeLessThan(Date value) {
            addCriterion("replyCommentTime <", value, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeLessThanOrEqualTo(Date value) {
            addCriterion("replyCommentTime <=", value, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeIn(List<Date> values) {
            addCriterion("replyCommentTime in", values, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeNotIn(List<Date> values) {
            addCriterion("replyCommentTime not in", values, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeBetween(Date value1, Date value2) {
            addCriterion("replyCommentTime between", value1, value2, "replycommenttime");
            return (Criteria) this;
        }

        public Criteria andReplycommenttimeNotBetween(Date value1, Date value2) {
            addCriterion("replyCommentTime not between", value1, value2, "replycommenttime");
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