package com.example.groupe_1.dao;

import com.example.groupe_1.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserDao {
    List<User> findAll();

    Optional<User> findOne(int id);

    Optional<User> findByLogin(String email, String password);

    boolean create(User user);

    boolean edit(User user);

    boolean delete(int id);
}
