package com.dmitriy.lagus.tickets.DAO.Interfaces;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.dmitriy.lagus.tickets.Entities.User;
/**
 * Created by User on 16.
 * 11.2015.
 */
@Repository
public interface UserDao extends CrudRepository<User, Long> {

    List<User> findByUsername (String username);
    List<User> findByUsernameAndPassword (String username, String password);

}
