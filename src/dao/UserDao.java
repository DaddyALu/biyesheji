package dao;

import entity.User;

public interface UserDao {
    User login(String username, String password);
}
