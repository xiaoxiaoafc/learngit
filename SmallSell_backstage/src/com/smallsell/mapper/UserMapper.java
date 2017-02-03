package com.smallsell.mapper;

import java.util.List;

import com.smallsell.entity.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);


    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    List<User> selectUser(User user);
}