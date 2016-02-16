package com.dmitriy.lagus.tickets.Services;

import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieDao;
import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieRatingDao;
import com.dmitriy.lagus.tickets.Entities.Movie;
import com.dmitriy.lagus.tickets.Entities.MovieRating;
import com.dmitriy.lagus.tickets.Entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.Date;

/**
 * Created by User on 10.02.2016.
 */

@Service("MovieRatingService")
public class MovieRatingService {

    @Autowired
    private MovieDao movieDao;

    @Autowired
    private MovieRatingDao movieRatingDao;

    @Autowired
    private EntityManager entityManager;

    @Transactional( propagation = Propagation.REQUIRES_NEW, readOnly = false)
    public double setMovieRating(MovieRating movieRating, Movie movie, User user, int rating) {
        double newRating = 0;
        if (movieRating == null) {
            MovieRating mr = new MovieRating(user.getUserId(), movie.getMovieId(), rating);
            mr.setModificationDate(new Date());
            entityManager.merge(mr);

            //movieRatingDao.save(mr); //InvocationTargetException
            newRating = ((movie.getRating()*movie.getAmountOfVotes())+rating)/(movie.getAmountOfVotes()+1);
            movie.setRating(newRating);
            movie.addVote();
            movieDao.save(movie);
        }
        else {
            newRating = ((movie.getRating()*movie.getAmountOfVotes()-movieRating.getVote()+rating)/movie.getAmountOfVotes());
            movieRating.setVote(rating);
            movieRating.setModificationDate(new Date());
            movieRatingDao.save(movieRating);
            movie.setRating(newRating);
            movieDao.save(movie);
        }
        return newRating;
    }

}
