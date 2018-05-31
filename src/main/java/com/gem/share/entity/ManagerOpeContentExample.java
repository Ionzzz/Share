package com.gem.share.entity;

import java.util.ArrayList;
import java.util.List;

public class ManagerOpeContentExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ManagerOpeContentExample() {
    }

    @Override
    public String toString() {
        return "ManagerOpeContentExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ManagerOpeContentExample that = (ManagerOpeContentExample) o;

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

        public Criteria andManageroperateIdIsNull() {
            addCriterion("managerOperate_id is null");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdIsNotNull() {
            addCriterion("managerOperate_id is not null");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdEqualTo(Integer value) {
            addCriterion("managerOperate_id =", value, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdNotEqualTo(Integer value) {
            addCriterion("managerOperate_id <>", value, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdGreaterThan(Integer value) {
            addCriterion("managerOperate_id >", value, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("managerOperate_id >=", value, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdLessThan(Integer value) {
            addCriterion("managerOperate_id <", value, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdLessThanOrEqualTo(Integer value) {
            addCriterion("managerOperate_id <=", value, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdIn(List<Integer> values) {
            addCriterion("managerOperate_id in", values, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdNotIn(List<Integer> values) {
            addCriterion("managerOperate_id not in", values, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdBetween(Integer value1, Integer value2) {
            addCriterion("managerOperate_id between", value1, value2, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIdNotBetween(Integer value1, Integer value2) {
            addCriterion("managerOperate_id not between", value1, value2, "manageroperateId");
            return (Criteria) this;
        }

        public Criteria andManagerIdIsNull() {
            addCriterion("manager_id is null");
            return (Criteria) this;
        }

        public Criteria andManagerIdIsNotNull() {
            addCriterion("manager_id is not null");
            return (Criteria) this;
        }

        public Criteria andManagerIdEqualTo(Integer value) {
            addCriterion("manager_id =", value, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdNotEqualTo(Integer value) {
            addCriterion("manager_id <>", value, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdGreaterThan(Integer value) {
            addCriterion("manager_id >", value, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("manager_id >=", value, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdLessThan(Integer value) {
            addCriterion("manager_id <", value, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdLessThanOrEqualTo(Integer value) {
            addCriterion("manager_id <=", value, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdIn(List<Integer> values) {
            addCriterion("manager_id in", values, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdNotIn(List<Integer> values) {
            addCriterion("manager_id not in", values, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdBetween(Integer value1, Integer value2) {
            addCriterion("manager_id between", value1, value2, "managerId");
            return (Criteria) this;
        }

        public Criteria andManagerIdNotBetween(Integer value1, Integer value2) {
            addCriterion("manager_id not between", value1, value2, "managerId");
            return (Criteria) this;
        }

        public Criteria andManageroperateIsNull() {
            addCriterion("managerOperate is null");
            return (Criteria) this;
        }

        public Criteria andManageroperateIsNotNull() {
            addCriterion("managerOperate is not null");
            return (Criteria) this;
        }

        public Criteria andManageroperateEqualTo(String value) {
            addCriterion("managerOperate =", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateNotEqualTo(String value) {
            addCriterion("managerOperate <>", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateGreaterThan(String value) {
            addCriterion("managerOperate >", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateGreaterThanOrEqualTo(String value) {
            addCriterion("managerOperate >=", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateLessThan(String value) {
            addCriterion("managerOperate <", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateLessThanOrEqualTo(String value) {
            addCriterion("managerOperate <=", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateLike(String value) {
            addCriterion("managerOperate like", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateNotLike(String value) {
            addCriterion("managerOperate not like", value, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateIn(List<String> values) {
            addCriterion("managerOperate in", values, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateNotIn(List<String> values) {
            addCriterion("managerOperate not in", values, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateBetween(String value1, String value2) {
            addCriterion("managerOperate between", value1, value2, "manageroperate");
            return (Criteria) this;
        }

        public Criteria andManageroperateNotBetween(String value1, String value2) {
            addCriterion("managerOperate not between", value1, value2, "manageroperate");
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