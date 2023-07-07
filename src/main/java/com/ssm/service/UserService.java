package com.ssm.service;


import com.ssm.pojo.Users;

import java.util.List;

public interface UserService {
    int addUser(Users user);
    //根据id删除一个Book
    int deleteBookById(int id);
    //更新Book
    int updateUser(Users users);
    //根据id查询,返回一个Book
    Users queryUserById(int id);
    //查询全部Book,返回list集合
    List<Users> queryAllUser();
    List<Users> queryLikeByName(String username);

    Users queryUserByName(String username);
}
