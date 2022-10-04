package com.example.groupe_1.dao;

import java.util.List;
import java.util.Optional;

public interface UserDao {
    List<User> findAll();

    Optional<User> findOne(int id);

    boolean create(User user);

    boolean edit(User user);

    boolean delete(int id);
}
