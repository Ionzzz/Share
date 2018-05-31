package com.gem.share.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class LabelInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public LabelInfoExample() {
    }

    @Override
    public String toString() {
        return "LabelInfoExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LabelInfoExample that = (LabelInfoExample) o;

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

        public Criteria andLabelIdIsNull() {
            addCriterion("label_id is null");
            return (Criteria) this;
        }

        public Criteria andLabelIdIsNotNull() {
            addCriterion("label_id is not null");
            return (Criteria) this;
        }

        public Criteria andLabelIdEqualTo(Integer value) {
            addCriterion("label_id =", value, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdNotEqualTo(Integer value) {
            addCriterion("label_id <>", value, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdGreaterThan(Integer value) {
            addCriterion("label_id >", value, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("label_id >=", value, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdLessThan(Integer value) {
            addCriterion("label_id <", value, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdLessThanOrEqualTo(Integer value) {
            addCriterion("label_id <=", value, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdIn(List<Integer> values) {
            addCriterion("label_id in", values, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdNotIn(List<Integer> values) {
            addCriterion("label_id not in", values, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdBetween(Integer value1, Integer value2) {
            addCriterion("label_id between", value1, value2, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelIdNotBetween(Integer value1, Integer value2) {
            addCriterion("label_id not between", value1, value2, "labelId");
            return (Criteria) this;
        }

        public Criteria andLabelnameIsNull() {
            addCriterion("labelName is null");
            return (Criteria) this;
        }

        public Criteria andLabelnameIsNotNull() {
            addCriterion("labelName is not null");
            return (Criteria) this;
        }

        public Criteria andLabelnameEqualTo(String value) {
            addCriterion("labelName =", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameNotEqualTo(String value) {
            addCriterion("labelName <>", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameGreaterThan(String value) {
            addCriterion("labelName >", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameGreaterThanOrEqualTo(String value) {
            addCriterion("labelName >=", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameLessThan(String value) {
            addCriterion("labelName <", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameLessThanOrEqualTo(String value) {
            addCriterion("labelName <=", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameLike(String value) {
            addCriterion("labelName like", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameNotLike(String value) {
            addCriterion("labelName not like", value, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameIn(List<String> values) {
            addCriterion("labelName in", values, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameNotIn(List<String> values) {
            addCriterion("labelName not in", values, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameBetween(String value1, String value2) {
            addCriterion("labelName between", value1, value2, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelnameNotBetween(String value1, String value2) {
            addCriterion("labelName not between", value1, value2, "labelname");
            return (Criteria) this;
        }

        public Criteria andLabelcontentIsNull() {
            addCriterion("labelContent is null");
            return (Criteria) this;
        }

        public Criteria andLabelcontentIsNotNull() {
            addCriterion("labelContent is not null");
            return (Criteria) this;
        }

        public Criteria andLabelcontentEqualTo(String value) {
            addCriterion("labelContent =", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentNotEqualTo(String value) {
            addCriterion("labelContent <>", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentGreaterThan(String value) {
            addCriterion("labelContent >", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentGreaterThanOrEqualTo(String value) {
            addCriterion("labelContent >=", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentLessThan(String value) {
            addCriterion("labelContent <", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentLessThanOrEqualTo(String value) {
            addCriterion("labelContent <=", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentLike(String value) {
            addCriterion("labelContent like", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentNotLike(String value) {
            addCriterion("labelContent not like", value, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentIn(List<String> values) {
            addCriterion("labelContent in", values, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentNotIn(List<String> values) {
            addCriterion("labelContent not in", values, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentBetween(String value1, String value2) {
            addCriterion("labelContent between", value1, value2, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcontentNotBetween(String value1, String value2) {
            addCriterion("labelContent not between", value1, value2, "labelcontent");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeIsNull() {
            addCriterion("labelCreateTime is null");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeIsNotNull() {
            addCriterion("labelCreateTime is not null");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeEqualTo(Date value) {
            addCriterion("labelCreateTime =", value, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeNotEqualTo(Date value) {
            addCriterion("labelCreateTime <>", value, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeGreaterThan(Date value) {
            addCriterion("labelCreateTime >", value, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("labelCreateTime >=", value, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeLessThan(Date value) {
            addCriterion("labelCreateTime <", value, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("labelCreateTime <=", value, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeIn(List<Date> values) {
            addCriterion("labelCreateTime in", values, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeNotIn(List<Date> values) {
            addCriterion("labelCreateTime not in", values, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeBetween(Date value1, Date value2) {
            addCriterion("labelCreateTime between", value1, value2, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelcreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("labelCreateTime not between", value1, value2, "labelcreatetime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeIsNull() {
            addCriterion("labelModifyTime is null");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeIsNotNull() {
            addCriterion("labelModifyTime is not null");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeEqualTo(Date value) {
            addCriterion("labelModifyTime =", value, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeNotEqualTo(Date value) {
            addCriterion("labelModifyTime <>", value, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeGreaterThan(Date value) {
            addCriterion("labelModifyTime >", value, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeGreaterThanOrEqualTo(Date value) {
            addCriterion("labelModifyTime >=", value, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeLessThan(Date value) {
            addCriterion("labelModifyTime <", value, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeLessThanOrEqualTo(Date value) {
            addCriterion("labelModifyTime <=", value, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeIn(List<Date> values) {
            addCriterion("labelModifyTime in", values, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeNotIn(List<Date> values) {
            addCriterion("labelModifyTime not in", values, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeBetween(Date value1, Date value2) {
            addCriterion("labelModifyTime between", value1, value2, "labelmodifytime");
            return (Criteria) this;
        }

        public Criteria andLabelmodifytimeNotBetween(Date value1, Date value2) {
            addCriterion("labelModifyTime not between", value1, value2, "labelmodifytime");
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