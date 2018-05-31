package com.gem.share.entity;

import java.util.ArrayList;
import java.util.List;

public class ManagerInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ManagerInfoExample() {
    }

    @Override
    public String toString() {
        return "ManagerInfoExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ManagerInfoExample that = (ManagerInfoExample) o;

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

        public Criteria andManageraccountIsNull() {
            addCriterion("managerAccount is null");
            return (Criteria) this;
        }

        public Criteria andManageraccountIsNotNull() {
            addCriterion("managerAccount is not null");
            return (Criteria) this;
        }

        public Criteria andManageraccountEqualTo(String value) {
            addCriterion("managerAccount =", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountNotEqualTo(String value) {
            addCriterion("managerAccount <>", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountGreaterThan(String value) {
            addCriterion("managerAccount >", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountGreaterThanOrEqualTo(String value) {
            addCriterion("managerAccount >=", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountLessThan(String value) {
            addCriterion("managerAccount <", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountLessThanOrEqualTo(String value) {
            addCriterion("managerAccount <=", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountLike(String value) {
            addCriterion("managerAccount like", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountNotLike(String value) {
            addCriterion("managerAccount not like", value, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountIn(List<String> values) {
            addCriterion("managerAccount in", values, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountNotIn(List<String> values) {
            addCriterion("managerAccount not in", values, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountBetween(String value1, String value2) {
            addCriterion("managerAccount between", value1, value2, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManageraccountNotBetween(String value1, String value2) {
            addCriterion("managerAccount not between", value1, value2, "manageraccount");
            return (Criteria) this;
        }

        public Criteria andManagerpwdIsNull() {
            addCriterion("managerPwd is null");
            return (Criteria) this;
        }

        public Criteria andManagerpwdIsNotNull() {
            addCriterion("managerPwd is not null");
            return (Criteria) this;
        }

        public Criteria andManagerpwdEqualTo(String value) {
            addCriterion("managerPwd =", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdNotEqualTo(String value) {
            addCriterion("managerPwd <>", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdGreaterThan(String value) {
            addCriterion("managerPwd >", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdGreaterThanOrEqualTo(String value) {
            addCriterion("managerPwd >=", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdLessThan(String value) {
            addCriterion("managerPwd <", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdLessThanOrEqualTo(String value) {
            addCriterion("managerPwd <=", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdLike(String value) {
            addCriterion("managerPwd like", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdNotLike(String value) {
            addCriterion("managerPwd not like", value, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdIn(List<String> values) {
            addCriterion("managerPwd in", values, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdNotIn(List<String> values) {
            addCriterion("managerPwd not in", values, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdBetween(String value1, String value2) {
            addCriterion("managerPwd between", value1, value2, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerpwdNotBetween(String value1, String value2) {
            addCriterion("managerPwd not between", value1, value2, "managerpwd");
            return (Criteria) this;
        }

        public Criteria andManagerlimitIsNull() {
            addCriterion("managerLimit is null");
            return (Criteria) this;
        }

        public Criteria andManagerlimitIsNotNull() {
            addCriterion("managerLimit is not null");
            return (Criteria) this;
        }

        public Criteria andManagerlimitEqualTo(Integer value) {
            addCriterion("managerLimit =", value, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitNotEqualTo(Integer value) {
            addCriterion("managerLimit <>", value, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitGreaterThan(Integer value) {
            addCriterion("managerLimit >", value, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitGreaterThanOrEqualTo(Integer value) {
            addCriterion("managerLimit >=", value, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitLessThan(Integer value) {
            addCriterion("managerLimit <", value, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitLessThanOrEqualTo(Integer value) {
            addCriterion("managerLimit <=", value, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitIn(List<Integer> values) {
            addCriterion("managerLimit in", values, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitNotIn(List<Integer> values) {
            addCriterion("managerLimit not in", values, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitBetween(Integer value1, Integer value2) {
            addCriterion("managerLimit between", value1, value2, "managerlimit");
            return (Criteria) this;
        }

        public Criteria andManagerlimitNotBetween(Integer value1, Integer value2) {
            addCriterion("managerLimit not between", value1, value2, "managerlimit");
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