package com.dmitriy.lagus.tickets.Controllers;

import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieDao;
import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieRatingDao;
import com.dmitriy.lagus.tickets.Entities.Movie;
import com.dmitriy.lagus.tickets.Entities.MovieRating;
import com.dmitriy.lagus.tickets.Entities.User;
import com.dmitriy.lagus.tickets.Services.MovieRatingService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.util.List;

/**
 * Created by User on 27.11.2015.
 */
@Controller
public class MovieController {

    @Autowired
    private MovieDao movieDao;

    @Autowired
    private MovieRatingDao movieRatingDao;

    @Autowired
    private MovieRatingService movieRatingService;

    @RequestMapping(value="/showMovies", method= RequestMethod.POST)
    public ModelAndView showMovies () {
        List<Movie> movies = movieDao.findByNameIsNotNull();
        ModelAndView mav = new ModelAndView("AjaxAttemp/allMovies");
        mav.addObject("movies", movies);
        return mav;
    }

    @RequestMapping(value="/allModal", method=RequestMethod.POST)
    public ModelAndView showMovies(@RequestParam("movieId")String movieId, HttpSession httpSession) {
        ModelAndView mav = new ModelAndView("AjaxAttemp/anotherModal");
        Movie movie = movieDao.findByMovieId(Integer.parseInt(movieId));
        if (httpSession.getAttribute("movie") == null)
            httpSession.setAttribute("movie", movie);
        else {
            httpSession.removeAttribute("movie");
            httpSession.setAttribute("movie", movie);
        }
        mav.addObject("movie", movie);
        return mav;
    }

    @RequestMapping(value="/getMovie", method=RequestMethod.POST)
    public ModelAndView getMovie(@RequestParam("movieId")String movieId, HttpSession httpSession ) {
        ModelAndView mav = new ModelAndView("AjaxAttemp/modalContent");
        Movie movie = movieDao.findByMovieId(Integer.parseInt(movieId));
        if (httpSession.getAttribute("movie") == null)
            httpSession.setAttribute("movie", movie);
        else {
            httpSession.removeAttribute("movie");
            httpSession.setAttribute("movie", movie);
        }
        mav.addObject("movie", movie);
        return mav;
    }

    @RequestMapping(value="/setRating", method=RequestMethod.POST)
    public Integer setRating (HttpSession httpSession) {
        Integer rating = (movieRatingDao.findByUserIdAndMovieId(((User) httpSession.getAttribute("user")).getUserId(), ((Movie) httpSession.getAttribute("movie")).getMovieId())).getVote();
        return rating;
    }

    @RequestMapping(value="/getRating", method=RequestMethod.GET)
    public double getRating(int rating, HttpSession httpSession) {
        if (rating == 0) {
            return 0.0;
        }
        User user = (User) httpSession.getAttribute("user");
        Movie movie = (Movie) httpSession.getAttribute("movie");                                                        //TODO A better way to get movie
        MovieRating movieRating = movieRatingDao.findByUserIdAndMovieId(user.getUserId(), movie.getMovieId());
        double newRating = movieRatingService.setMovieRating(movieRating, movie, user, rating);                         //Still an invocationTargetException is thrown.
        return newRating;
    }

}
