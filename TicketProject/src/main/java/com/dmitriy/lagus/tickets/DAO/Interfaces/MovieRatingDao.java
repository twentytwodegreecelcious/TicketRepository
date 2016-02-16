package com.dmitriy.lagus.tickets.DAO.Interfaces;


import com.dmitriy.lagus.tickets.Entities.MovieRating;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.QueryHints;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.QueryHint;
import java.sql.Date;
import java.util.List;

/**
 * Created by User on 08.02.2016.
 */
@Repository
public interface MovieRatingDao extends JpaRepository<MovieRating, MovieRating.Key> {

    MovieRating findByUserIdAndMovieId (Integer userId, Integer movieId);
    List<MovieRating> findTop4ByOrderByModificationDateDesc();

}
