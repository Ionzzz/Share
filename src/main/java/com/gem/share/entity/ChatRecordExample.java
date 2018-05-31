package com.gem.share.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ChatRecordExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ChatRecordExample() {
    }

    @Override
    public String toString() {
        return "ChatRecordExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ChatRecordExample that = (ChatRecordExample) o;

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

        public Criteria andMessageIdIsNull() {
            addCriterion("message_id is null");
            return (Criteria) this;
        }

        public Criteria andMessageIdIsNotNull() {
            addCriterion("message_id is not null");
            return (Criteria) this;
        }

        public Criteria andMessageIdEqualTo(Integer value) {
            addCriterion("message_id =", value, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdNotEqualTo(Integer value) {
            addCriterion("message_id <>", value, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdGreaterThan(Integer value) {
            addCriterion("message_id >", value, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("message_id >=", value, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdLessThan(Integer value) {
            addCriterion("message_id <", value, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdLessThanOrEqualTo(Integer value) {
            addCriterion("message_id <=", value, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdIn(List<Integer> values) {
            addCriterion("message_id in", values, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdNotIn(List<Integer> values) {
            addCriterion("message_id not in", values, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdBetween(Integer value1, Integer value2) {
            addCriterion("message_id between", value1, value2, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessageIdNotBetween(Integer value1, Integer value2) {
            addCriterion("message_id not between", value1, value2, "messageId");
            return (Criteria) this;
        }

        public Criteria andMessagepostIsNull() {
            addCriterion("messagePost is null");
            return (Criteria) this;
        }

        public Criteria andMessagepostIsNotNull() {
            addCriterion("messagePost is not null");
            return (Criteria) this;
        }

        public Criteria andMessagepostEqualTo(String value) {
            addCriterion("messagePost =", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostNotEqualTo(String value) {
            addCriterion("messagePost <>", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostGreaterThan(String value) {
            addCriterion("messagePost >", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostGreaterThanOrEqualTo(String value) {
            addCriterion("messagePost >=", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostLessThan(String value) {
            addCriterion("messagePost <", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostLessThanOrEqualTo(String value) {
            addCriterion("messagePost <=", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostLike(String value) {
            addCriterion("messagePost like", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostNotLike(String value) {
            addCriterion("messagePost not like", value, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostIn(List<String> values) {
            addCriterion("messagePost in", values, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostNotIn(List<String> values) {
            addCriterion("messagePost not in", values, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostBetween(String value1, String value2) {
            addCriterion("messagePost between", value1, value2, "messagepost");
            return (Criteria) this;
        }

        public Criteria andMessagepostNotBetween(String value1, String value2) {
            addCriterion("messagePost not between", value1, value2, "messagepost");
            return (Criteria) this;
        }

        public Criteria andSendtimeIsNull() {
            addCriterion("sendTime is null");
            return (Criteria) this;
        }

        public Criteria andSendtimeIsNotNull() {
            addCriterion("sendTime is not null");
            return (Criteria) this;
        }

        public Criteria andSendtimeEqualTo(Date value) {
            addCriterion("sendTime =", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotEqualTo(Date value) {
            addCriterion("sendTime <>", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeGreaterThan(Date value) {
            addCriterion("sendTime >", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeGreaterThanOrEqualTo(Date value) {
            addCriterion("sendTime >=", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeLessThan(Date value) {
            addCriterion("sendTime <", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeLessThanOrEqualTo(Date value) {
            addCriterion("sendTime <=", value, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeIn(List<Date> values) {
            addCriterion("sendTime in", values, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotIn(List<Date> values) {
            addCriterion("sendTime not in", values, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeBetween(Date value1, Date value2) {
            addCriterion("sendTime between", value1, value2, "sendtime");
            return (Criteria) this;
        }

        public Criteria andSendtimeNotBetween(Date value1, Date value2) {
            addCriterion("sendTime not between", value1, value2, "sendtime");
            return (Criteria) this;
        }

        public Criteria andUserIdSendIsNull() {
            addCriterion("user_id_Send is null");
            return (Criteria) this;
        }

        public Criteria andUserIdSendIsNotNull() {
            addCriterion("user_id_Send is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdSendEqualTo(Integer value) {
            addCriterion("user_id_Send =", value, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendNotEqualTo(Integer value) {
            addCriterion("user_id_Send <>", value, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendGreaterThan(Integer value) {
            addCriterion("user_id_Send >", value, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id_Send >=", value, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendLessThan(Integer value) {
            addCriterion("user_id_Send <", value, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendLessThanOrEqualTo(Integer value) {
            addCriterion("user_id_Send <=", value, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendIn(List<Integer> values) {
            addCriterion("user_id_Send in", values, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendNotIn(List<Integer> values) {
            addCriterion("user_id_Send not in", values, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendBetween(Integer value1, Integer value2) {
            addCriterion("user_id_Send between", value1, value2, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdSendNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id_Send not between", value1, value2, "userIdSend");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvIsNull() {
            addCriterion("user_id_Recv is null");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvIsNotNull() {
            addCriterion("user_id_Recv is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvEqualTo(Integer value) {
            addCriterion("user_id_Recv =", value, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvNotEqualTo(Integer value) {
            addCriterion("user_id_Recv <>", value, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvGreaterThan(Integer value) {
            addCriterion("user_id_Recv >", value, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id_Recv >=", value, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvLessThan(Integer value) {
            addCriterion("user_id_Recv <", value, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvLessThanOrEqualTo(Integer value) {
            addCriterion("user_id_Recv <=", value, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvIn(List<Integer> values) {
            addCriterion("user_id_Recv in", values, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvNotIn(List<Integer> values) {
            addCriterion("user_id_Recv not in", values, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvBetween(Integer value1, Integer value2) {
            addCriterion("user_id_Recv between", value1, value2, "userIdRecv");
            return (Criteria) this;
        }

        public Criteria andUserIdRecvNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id_Recv not between", value1, value2, "userIdRecv");
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