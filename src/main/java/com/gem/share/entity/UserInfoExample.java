package com.gem.share.entity;

import java.util.ArrayList;
import java.util.List;

public class UserInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserInfoExample() {
    }

    @Override
    public String toString() {
        return "UserInfoExample{" +
                "orderByClause='" + orderByClause + '\'' +
                ", distinct=" + distinct +
                ", oredCriteria=" + oredCriteria +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserInfoExample that = (UserInfoExample) o;

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

        public Criteria andUseraccountIsNull() {
            addCriterion("userAccount is null");
            return (Criteria) this;
        }

        public Criteria andUseraccountIsNotNull() {
            addCriterion("userAccount is not null");
            return (Criteria) this;
        }

        public Criteria andUseraccountEqualTo(String value) {
            addCriterion("userAccount =", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountNotEqualTo(String value) {
            addCriterion("userAccount <>", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountGreaterThan(String value) {
            addCriterion("userAccount >", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountGreaterThanOrEqualTo(String value) {
            addCriterion("userAccount >=", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountLessThan(String value) {
            addCriterion("userAccount <", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountLessThanOrEqualTo(String value) {
            addCriterion("userAccount <=", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountLike(String value) {
            addCriterion("userAccount like", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountNotLike(String value) {
            addCriterion("userAccount not like", value, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountIn(List<String> values) {
            addCriterion("userAccount in", values, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountNotIn(List<String> values) {
            addCriterion("userAccount not in", values, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountBetween(String value1, String value2) {
            addCriterion("userAccount between", value1, value2, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUseraccountNotBetween(String value1, String value2) {
            addCriterion("userAccount not between", value1, value2, "useraccount");
            return (Criteria) this;
        }

        public Criteria andUserpwdIsNull() {
            addCriterion("userPwd is null");
            return (Criteria) this;
        }

        public Criteria andUserpwdIsNotNull() {
            addCriterion("userPwd is not null");
            return (Criteria) this;
        }

        public Criteria andUserpwdEqualTo(String value) {
            addCriterion("userPwd =", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdNotEqualTo(String value) {
            addCriterion("userPwd <>", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdGreaterThan(String value) {
            addCriterion("userPwd >", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdGreaterThanOrEqualTo(String value) {
            addCriterion("userPwd >=", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdLessThan(String value) {
            addCriterion("userPwd <", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdLessThanOrEqualTo(String value) {
            addCriterion("userPwd <=", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdLike(String value) {
            addCriterion("userPwd like", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdNotLike(String value) {
            addCriterion("userPwd not like", value, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdIn(List<String> values) {
            addCriterion("userPwd in", values, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdNotIn(List<String> values) {
            addCriterion("userPwd not in", values, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdBetween(String value1, String value2) {
            addCriterion("userPwd between", value1, value2, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUserpwdNotBetween(String value1, String value2) {
            addCriterion("userPwd not between", value1, value2, "userpwd");
            return (Criteria) this;
        }

        public Criteria andUsersexIsNull() {
            addCriterion("userSex is null");
            return (Criteria) this;
        }

        public Criteria andUsersexIsNotNull() {
            addCriterion("userSex is not null");
            return (Criteria) this;
        }

        public Criteria andUsersexEqualTo(String value) {
            addCriterion("userSex =", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexNotEqualTo(String value) {
            addCriterion("userSex <>", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexGreaterThan(String value) {
            addCriterion("userSex >", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexGreaterThanOrEqualTo(String value) {
            addCriterion("userSex >=", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexLessThan(String value) {
            addCriterion("userSex <", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexLessThanOrEqualTo(String value) {
            addCriterion("userSex <=", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexLike(String value) {
            addCriterion("userSex like", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexNotLike(String value) {
            addCriterion("userSex not like", value, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexIn(List<String> values) {
            addCriterion("userSex in", values, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexNotIn(List<String> values) {
            addCriterion("userSex not in", values, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexBetween(String value1, String value2) {
            addCriterion("userSex between", value1, value2, "usersex");
            return (Criteria) this;
        }

        public Criteria andUsersexNotBetween(String value1, String value2) {
            addCriterion("userSex not between", value1, value2, "usersex");
            return (Criteria) this;
        }

        public Criteria andUserageIsNull() {
            addCriterion("userAge is null");
            return (Criteria) this;
        }

        public Criteria andUserageIsNotNull() {
            addCriterion("userAge is not null");
            return (Criteria) this;
        }

        public Criteria andUserageEqualTo(Integer value) {
            addCriterion("userAge =", value, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageNotEqualTo(Integer value) {
            addCriterion("userAge <>", value, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageGreaterThan(Integer value) {
            addCriterion("userAge >", value, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageGreaterThanOrEqualTo(Integer value) {
            addCriterion("userAge >=", value, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageLessThan(Integer value) {
            addCriterion("userAge <", value, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageLessThanOrEqualTo(Integer value) {
            addCriterion("userAge <=", value, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageIn(List<Integer> values) {
            addCriterion("userAge in", values, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageNotIn(List<Integer> values) {
            addCriterion("userAge not in", values, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageBetween(Integer value1, Integer value2) {
            addCriterion("userAge between", value1, value2, "userage");
            return (Criteria) this;
        }

        public Criteria andUserageNotBetween(Integer value1, Integer value2) {
            addCriterion("userAge not between", value1, value2, "userage");
            return (Criteria) this;
        }

        public Criteria andUsereducateIsNull() {
            addCriterion("userEducate is null");
            return (Criteria) this;
        }

        public Criteria andUsereducateIsNotNull() {
            addCriterion("userEducate is not null");
            return (Criteria) this;
        }

        public Criteria andUsereducateEqualTo(String value) {
            addCriterion("userEducate =", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateNotEqualTo(String value) {
            addCriterion("userEducate <>", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateGreaterThan(String value) {
            addCriterion("userEducate >", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateGreaterThanOrEqualTo(String value) {
            addCriterion("userEducate >=", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateLessThan(String value) {
            addCriterion("userEducate <", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateLessThanOrEqualTo(String value) {
            addCriterion("userEducate <=", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateLike(String value) {
            addCriterion("userEducate like", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateNotLike(String value) {
            addCriterion("userEducate not like", value, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateIn(List<String> values) {
            addCriterion("userEducate in", values, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateNotIn(List<String> values) {
            addCriterion("userEducate not in", values, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateBetween(String value1, String value2) {
            addCriterion("userEducate between", value1, value2, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsereducateNotBetween(String value1, String value2) {
            addCriterion("userEducate not between", value1, value2, "usereducate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateIsNull() {
            addCriterion("userGraduate is null");
            return (Criteria) this;
        }

        public Criteria andUsergraduateIsNotNull() {
            addCriterion("userGraduate is not null");
            return (Criteria) this;
        }

        public Criteria andUsergraduateEqualTo(String value) {
            addCriterion("userGraduate =", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateNotEqualTo(String value) {
            addCriterion("userGraduate <>", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateGreaterThan(String value) {
            addCriterion("userGraduate >", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateGreaterThanOrEqualTo(String value) {
            addCriterion("userGraduate >=", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateLessThan(String value) {
            addCriterion("userGraduate <", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateLessThanOrEqualTo(String value) {
            addCriterion("userGraduate <=", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateLike(String value) {
            addCriterion("userGraduate like", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateNotLike(String value) {
            addCriterion("userGraduate not like", value, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateIn(List<String> values) {
            addCriterion("userGraduate in", values, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateNotIn(List<String> values) {
            addCriterion("userGraduate not in", values, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateBetween(String value1, String value2) {
            addCriterion("userGraduate between", value1, value2, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUsergraduateNotBetween(String value1, String value2) {
            addCriterion("userGraduate not between", value1, value2, "usergraduate");
            return (Criteria) this;
        }

        public Criteria andUserintroduceIsNull() {
            addCriterion("userIntroduce is null");
            return (Criteria) this;
        }

        public Criteria andUserintroduceIsNotNull() {
            addCriterion("userIntroduce is not null");
            return (Criteria) this;
        }

        public Criteria andUserintroduceEqualTo(String value) {
            addCriterion("userIntroduce =", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceNotEqualTo(String value) {
            addCriterion("userIntroduce <>", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceGreaterThan(String value) {
            addCriterion("userIntroduce >", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceGreaterThanOrEqualTo(String value) {
            addCriterion("userIntroduce >=", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceLessThan(String value) {
            addCriterion("userIntroduce <", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceLessThanOrEqualTo(String value) {
            addCriterion("userIntroduce <=", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceLike(String value) {
            addCriterion("userIntroduce like", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceNotLike(String value) {
            addCriterion("userIntroduce not like", value, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceIn(List<String> values) {
            addCriterion("userIntroduce in", values, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceNotIn(List<String> values) {
            addCriterion("userIntroduce not in", values, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceBetween(String value1, String value2) {
            addCriterion("userIntroduce between", value1, value2, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUserintroduceNotBetween(String value1, String value2) {
            addCriterion("userIntroduce not between", value1, value2, "userintroduce");
            return (Criteria) this;
        }

        public Criteria andUsernicknameIsNull() {
            addCriterion("userNickName is null");
            return (Criteria) this;
        }

        public Criteria andUsernicknameIsNotNull() {
            addCriterion("userNickName is not null");
            return (Criteria) this;
        }

        public Criteria andUsernicknameEqualTo(String value) {
            addCriterion("userNickName =", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameNotEqualTo(String value) {
            addCriterion("userNickName <>", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameGreaterThan(String value) {
            addCriterion("userNickName >", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameGreaterThanOrEqualTo(String value) {
            addCriterion("userNickName >=", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameLessThan(String value) {
            addCriterion("userNickName <", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameLessThanOrEqualTo(String value) {
            addCriterion("userNickName <=", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameLike(String value) {
            addCriterion("userNickName like", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameNotLike(String value) {
            addCriterion("userNickName not like", value, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameIn(List<String> values) {
            addCriterion("userNickName in", values, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameNotIn(List<String> values) {
            addCriterion("userNickName not in", values, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameBetween(String value1, String value2) {
            addCriterion("userNickName between", value1, value2, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUsernicknameNotBetween(String value1, String value2) {
            addCriterion("userNickName not between", value1, value2, "usernickname");
            return (Criteria) this;
        }

        public Criteria andUserimgIsNull() {
            addCriterion("userImg is null");
            return (Criteria) this;
        }

        public Criteria andUserimgIsNotNull() {
            addCriterion("userImg is not null");
            return (Criteria) this;
        }

        public Criteria andUserimgEqualTo(String value) {
            addCriterion("userImg =", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgNotEqualTo(String value) {
            addCriterion("userImg <>", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgGreaterThan(String value) {
            addCriterion("userImg >", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgGreaterThanOrEqualTo(String value) {
            addCriterion("userImg >=", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgLessThan(String value) {
            addCriterion("userImg <", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgLessThanOrEqualTo(String value) {
            addCriterion("userImg <=", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgLike(String value) {
            addCriterion("userImg like", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgNotLike(String value) {
            addCriterion("userImg not like", value, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgIn(List<String> values) {
            addCriterion("userImg in", values, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgNotIn(List<String> values) {
            addCriterion("userImg not in", values, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgBetween(String value1, String value2) {
            addCriterion("userImg between", value1, value2, "userimg");
            return (Criteria) this;
        }

        public Criteria andUserimgNotBetween(String value1, String value2) {
            addCriterion("userImg not between", value1, value2, "userimg");
            return (Criteria) this;
        }

        public Criteria andUseremailIsNull() {
            addCriterion("userEmail is null");
            return (Criteria) this;
        }

        public Criteria andUseremailIsNotNull() {
            addCriterion("userEmail is not null");
            return (Criteria) this;
        }

        public Criteria andUseremailEqualTo(String value) {
            addCriterion("userEmail =", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotEqualTo(String value) {
            addCriterion("userEmail <>", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailGreaterThan(String value) {
            addCriterion("userEmail >", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailGreaterThanOrEqualTo(String value) {
            addCriterion("userEmail >=", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLessThan(String value) {
            addCriterion("userEmail <", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLessThanOrEqualTo(String value) {
            addCriterion("userEmail <=", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailLike(String value) {
            addCriterion("userEmail like", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotLike(String value) {
            addCriterion("userEmail not like", value, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailIn(List<String> values) {
            addCriterion("userEmail in", values, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotIn(List<String> values) {
            addCriterion("userEmail not in", values, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailBetween(String value1, String value2) {
            addCriterion("userEmail between", value1, value2, "useremail");
            return (Criteria) this;
        }

        public Criteria andUseremailNotBetween(String value1, String value2) {
            addCriterion("userEmail not between", value1, value2, "useremail");
            return (Criteria) this;
        }

        public Criteria andAddresssIdIsNull() {
            addCriterion("addresss_id is null");
            return (Criteria) this;
        }

        public Criteria andAddresssIdIsNotNull() {
            addCriterion("addresss_id is not null");
            return (Criteria) this;
        }

        public Criteria andAddresssIdEqualTo(Integer value) {
            addCriterion("addresss_id =", value, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdNotEqualTo(Integer value) {
            addCriterion("addresss_id <>", value, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdGreaterThan(Integer value) {
            addCriterion("addresss_id >", value, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("addresss_id >=", value, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdLessThan(Integer value) {
            addCriterion("addresss_id <", value, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdLessThanOrEqualTo(Integer value) {
            addCriterion("addresss_id <=", value, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdIn(List<Integer> values) {
            addCriterion("addresss_id in", values, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdNotIn(List<Integer> values) {
            addCriterion("addresss_id not in", values, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdBetween(Integer value1, Integer value2) {
            addCriterion("addresss_id between", value1, value2, "addresssId");
            return (Criteria) this;
        }

        public Criteria andAddresssIdNotBetween(Integer value1, Integer value2) {
            addCriterion("addresss_id not between", value1, value2, "addresssId");
            return (Criteria) this;
        }

        public Criteria andUserphoneIsNull() {
            addCriterion("userPhone is null");
            return (Criteria) this;
        }

        public Criteria andUserphoneIsNotNull() {
            addCriterion("userPhone is not null");
            return (Criteria) this;
        }

        public Criteria andUserphoneEqualTo(String value) {
            addCriterion("userPhone =", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotEqualTo(String value) {
            addCriterion("userPhone <>", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneGreaterThan(String value) {
            addCriterion("userPhone >", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneGreaterThanOrEqualTo(String value) {
            addCriterion("userPhone >=", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLessThan(String value) {
            addCriterion("userPhone <", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLessThanOrEqualTo(String value) {
            addCriterion("userPhone <=", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneLike(String value) {
            addCriterion("userPhone like", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotLike(String value) {
            addCriterion("userPhone not like", value, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneIn(List<String> values) {
            addCriterion("userPhone in", values, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotIn(List<String> values) {
            addCriterion("userPhone not in", values, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneBetween(String value1, String value2) {
            addCriterion("userPhone between", value1, value2, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserphoneNotBetween(String value1, String value2) {
            addCriterion("userPhone not between", value1, value2, "userphone");
            return (Criteria) this;
        }

        public Criteria andUserenergyIsNull() {
            addCriterion("userEnergy is null");
            return (Criteria) this;
        }

        public Criteria andUserenergyIsNotNull() {
            addCriterion("userEnergy is not null");
            return (Criteria) this;
        }

        public Criteria andUserenergyEqualTo(String value) {
            addCriterion("userEnergy =", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyNotEqualTo(String value) {
            addCriterion("userEnergy <>", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyGreaterThan(String value) {
            addCriterion("userEnergy >", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyGreaterThanOrEqualTo(String value) {
            addCriterion("userEnergy >=", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyLessThan(String value) {
            addCriterion("userEnergy <", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyLessThanOrEqualTo(String value) {
            addCriterion("userEnergy <=", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyLike(String value) {
            addCriterion("userEnergy like", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyNotLike(String value) {
            addCriterion("userEnergy not like", value, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyIn(List<String> values) {
            addCriterion("userEnergy in", values, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyNotIn(List<String> values) {
            addCriterion("userEnergy not in", values, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyBetween(String value1, String value2) {
            addCriterion("userEnergy between", value1, value2, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUserenergyNotBetween(String value1, String value2) {
            addCriterion("userEnergy not between", value1, value2, "userenergy");
            return (Criteria) this;
        }

        public Criteria andUseridnumberIsNull() {
            addCriterion("userIdNumber is null");
            return (Criteria) this;
        }

        public Criteria andUseridnumberIsNotNull() {
            addCriterion("userIdNumber is not null");
            return (Criteria) this;
        }

        public Criteria andUseridnumberEqualTo(String value) {
            addCriterion("userIdNumber =", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberNotEqualTo(String value) {
            addCriterion("userIdNumber <>", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberGreaterThan(String value) {
            addCriterion("userIdNumber >", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberGreaterThanOrEqualTo(String value) {
            addCriterion("userIdNumber >=", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberLessThan(String value) {
            addCriterion("userIdNumber <", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberLessThanOrEqualTo(String value) {
            addCriterion("userIdNumber <=", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberLike(String value) {
            addCriterion("userIdNumber like", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberNotLike(String value) {
            addCriterion("userIdNumber not like", value, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberIn(List<String> values) {
            addCriterion("userIdNumber in", values, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberNotIn(List<String> values) {
            addCriterion("userIdNumber not in", values, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberBetween(String value1, String value2) {
            addCriterion("userIdNumber between", value1, value2, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUseridnumberNotBetween(String value1, String value2) {
            addCriterion("userIdNumber not between", value1, value2, "useridnumber");
            return (Criteria) this;
        }

        public Criteria andUserstatusIsNull() {
            addCriterion("userStatus is null");
            return (Criteria) this;
        }

        public Criteria andUserstatusIsNotNull() {
            addCriterion("userStatus is not null");
            return (Criteria) this;
        }

        public Criteria andUserstatusEqualTo(String value) {
            addCriterion("userStatus =", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusNotEqualTo(String value) {
            addCriterion("userStatus <>", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusGreaterThan(String value) {
            addCriterion("userStatus >", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusGreaterThanOrEqualTo(String value) {
            addCriterion("userStatus >=", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusLessThan(String value) {
            addCriterion("userStatus <", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusLessThanOrEqualTo(String value) {
            addCriterion("userStatus <=", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusLike(String value) {
            addCriterion("userStatus like", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusNotLike(String value) {
            addCriterion("userStatus not like", value, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusIn(List<String> values) {
            addCriterion("userStatus in", values, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusNotIn(List<String> values) {
            addCriterion("userStatus not in", values, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusBetween(String value1, String value2) {
            addCriterion("userStatus between", value1, value2, "userstatus");
            return (Criteria) this;
        }

        public Criteria andUserstatusNotBetween(String value1, String value2) {
            addCriterion("userStatus not between", value1, value2, "userstatus");
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