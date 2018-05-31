package com.gem.share.entity;

import java.util.ArrayList;
import java.util.List;

public class UserGradeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserGradeExample() {
    }

    @Override
    public String toString() {
        return "UserGradeExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserGradeExample that = (UserGradeExample) o;

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

        public Criteria andUsergradeIdIsNull() {
            addCriterion("userGrade_id is null");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdIsNotNull() {
            addCriterion("userGrade_id is not null");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdEqualTo(Integer value) {
            addCriterion("userGrade_id =", value, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdNotEqualTo(Integer value) {
            addCriterion("userGrade_id <>", value, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdGreaterThan(Integer value) {
            addCriterion("userGrade_id >", value, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("userGrade_id >=", value, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdLessThan(Integer value) {
            addCriterion("userGrade_id <", value, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdLessThanOrEqualTo(Integer value) {
            addCriterion("userGrade_id <=", value, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdIn(List<Integer> values) {
            addCriterion("userGrade_id in", values, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdNotIn(List<Integer> values) {
            addCriterion("userGrade_id not in", values, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdBetween(Integer value1, Integer value2) {
            addCriterion("userGrade_id between", value1, value2, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andUsergradeIdNotBetween(Integer value1, Integer value2) {
            addCriterion("userGrade_id not between", value1, value2, "usergradeId");
            return (Criteria) this;
        }

        public Criteria andGradenameIsNull() {
            addCriterion("gradeName is null");
            return (Criteria) this;
        }

        public Criteria andGradenameIsNotNull() {
            addCriterion("gradeName is not null");
            return (Criteria) this;
        }

        public Criteria andGradenameEqualTo(String value) {
            addCriterion("gradeName =", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameNotEqualTo(String value) {
            addCriterion("gradeName <>", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameGreaterThan(String value) {
            addCriterion("gradeName >", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameGreaterThanOrEqualTo(String value) {
            addCriterion("gradeName >=", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameLessThan(String value) {
            addCriterion("gradeName <", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameLessThanOrEqualTo(String value) {
            addCriterion("gradeName <=", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameLike(String value) {
            addCriterion("gradeName like", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameNotLike(String value) {
            addCriterion("gradeName not like", value, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameIn(List<String> values) {
            addCriterion("gradeName in", values, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameNotIn(List<String> values) {
            addCriterion("gradeName not in", values, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameBetween(String value1, String value2) {
            addCriterion("gradeName between", value1, value2, "gradename");
            return (Criteria) this;
        }

        public Criteria andGradenameNotBetween(String value1, String value2) {
            addCriterion("gradeName not between", value1, value2, "gradename");
            return (Criteria) this;
        }

        public Criteria andMinscoreIsNull() {
            addCriterion("minScore is null");
            return (Criteria) this;
        }

        public Criteria andMinscoreIsNotNull() {
            addCriterion("minScore is not null");
            return (Criteria) this;
        }

        public Criteria andMinscoreEqualTo(Integer value) {
            addCriterion("minScore =", value, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreNotEqualTo(Integer value) {
            addCriterion("minScore <>", value, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreGreaterThan(Integer value) {
            addCriterion("minScore >", value, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("minScore >=", value, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreLessThan(Integer value) {
            addCriterion("minScore <", value, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreLessThanOrEqualTo(Integer value) {
            addCriterion("minScore <=", value, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreIn(List<Integer> values) {
            addCriterion("minScore in", values, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreNotIn(List<Integer> values) {
            addCriterion("minScore not in", values, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreBetween(Integer value1, Integer value2) {
            addCriterion("minScore between", value1, value2, "minscore");
            return (Criteria) this;
        }

        public Criteria andMinscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("minScore not between", value1, value2, "minscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreIsNull() {
            addCriterion("maxScore is null");
            return (Criteria) this;
        }

        public Criteria andMaxscoreIsNotNull() {
            addCriterion("maxScore is not null");
            return (Criteria) this;
        }

        public Criteria andMaxscoreEqualTo(Integer value) {
            addCriterion("maxScore =", value, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreNotEqualTo(Integer value) {
            addCriterion("maxScore <>", value, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreGreaterThan(Integer value) {
            addCriterion("maxScore >", value, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreGreaterThanOrEqualTo(Integer value) {
            addCriterion("maxScore >=", value, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreLessThan(Integer value) {
            addCriterion("maxScore <", value, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreLessThanOrEqualTo(Integer value) {
            addCriterion("maxScore <=", value, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreIn(List<Integer> values) {
            addCriterion("maxScore in", values, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreNotIn(List<Integer> values) {
            addCriterion("maxScore not in", values, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreBetween(Integer value1, Integer value2) {
            addCriterion("maxScore between", value1, value2, "maxscore");
            return (Criteria) this;
        }

        public Criteria andMaxscoreNotBetween(Integer value1, Integer value2) {
            addCriterion("maxScore not between", value1, value2, "maxscore");
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