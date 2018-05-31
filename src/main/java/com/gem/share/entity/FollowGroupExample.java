package com.gem.share.entity;

import java.util.ArrayList;
import java.util.List;

public class FollowGroupExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FollowGroupExample() {
    }

    @Override
    public String toString() {
        return "FollowGroupExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FollowGroupExample that = (FollowGroupExample) o;

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

        public Criteria andFollowgroupIdIsNull() {
            addCriterion("followGroup_id is null");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdIsNotNull() {
            addCriterion("followGroup_id is not null");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdEqualTo(Integer value) {
            addCriterion("followGroup_id =", value, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdNotEqualTo(Integer value) {
            addCriterion("followGroup_id <>", value, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdGreaterThan(Integer value) {
            addCriterion("followGroup_id >", value, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("followGroup_id >=", value, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdLessThan(Integer value) {
            addCriterion("followGroup_id <", value, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdLessThanOrEqualTo(Integer value) {
            addCriterion("followGroup_id <=", value, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdIn(List<Integer> values) {
            addCriterion("followGroup_id in", values, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdNotIn(List<Integer> values) {
            addCriterion("followGroup_id not in", values, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdBetween(Integer value1, Integer value2) {
            addCriterion("followGroup_id between", value1, value2, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupIdNotBetween(Integer value1, Integer value2) {
            addCriterion("followGroup_id not between", value1, value2, "followgroupId");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameIsNull() {
            addCriterion("followGroupName is null");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameIsNotNull() {
            addCriterion("followGroupName is not null");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameEqualTo(String value) {
            addCriterion("followGroupName =", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameNotEqualTo(String value) {
            addCriterion("followGroupName <>", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameGreaterThan(String value) {
            addCriterion("followGroupName >", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameGreaterThanOrEqualTo(String value) {
            addCriterion("followGroupName >=", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameLessThan(String value) {
            addCriterion("followGroupName <", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameLessThanOrEqualTo(String value) {
            addCriterion("followGroupName <=", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameLike(String value) {
            addCriterion("followGroupName like", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameNotLike(String value) {
            addCriterion("followGroupName not like", value, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameIn(List<String> values) {
            addCriterion("followGroupName in", values, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameNotIn(List<String> values) {
            addCriterion("followGroupName not in", values, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameBetween(String value1, String value2) {
            addCriterion("followGroupName between", value1, value2, "followgroupname");
            return (Criteria) this;
        }

        public Criteria andFollowgroupnameNotBetween(String value1, String value2) {
            addCriterion("followGroupName not between", value1, value2, "followgroupname");
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