package com.dmitriy.lagus.tickets.DAO.Interfaces;


import com.dmitriy.lagus.tickets.Entities.Movie;
import java.util.List;
import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;



/**
 * Created by User on 16.11.2015.
 */
@Repository
public interface MovieDao extends CrudRepository<Movie, Long> {

    List<Movie> findByNameContainingIgnoreCase (String name);
    List<Movie> findByNameIsNotNull ();
    Movie findByMovieId(int id);
}
