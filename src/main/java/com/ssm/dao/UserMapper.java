package com.ssm.dao;

import com.ssm.pojo.Users;

import java.util.List;

public interface UserMapper {
    int addUser(Users user);
    //根据id删除一个Book
    int deleteUserById(int id);
    //更新User
    int updateUser(Users users);
    //根据id查询,返回一个Book
    Users queryUserById(int id);
    //查询全部Book,返回list集合

    Users queryUserByName(String username);

    List<Users> queryAllUser();
    List<Users> queryLikeByName(String username);



}
