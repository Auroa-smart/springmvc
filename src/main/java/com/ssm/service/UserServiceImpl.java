package com.ssm.service;

import com.ssm.dao.UserMapper;
import com.ssm.pojo.Users;

import java.util.List;

public class UserServiceImpl implements UserService{

    private UserMapper userMapper;
    public void setUserMapper(UserMapper userMapper){
        this.userMapper = userMapper;
    }

    public int addUser(Users user) {
        return userMapper.addUser(user);
    }

    public int deleteBookById(int id) {
        return userMapper.deleteUserById(id);
    }

    public int updateUser(Users users) {
        return userMapper.updateUser(users);
    }

    public Users queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    public List<Users> queryAllUser() {
        return userMapper.queryAllUser();
    }

    @Override
    public List<Users> queryLikeByName(String username) {
        return userMapper.queryLikeByName(username);
    }

    public Users queryUserByName(String username) {
        return userMapper.queryUserByName(username);
    }
}
