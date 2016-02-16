package com.dmitriy.lagus.tickets.Controllers;

import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieDao;
import com.dmitriy.lagus.tickets.Entities.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by User on 14.11.2015.
 */
@Controller
public class AjaxController {


    @Autowired
    private MovieDao movieDao;
//
//
//    @RequestMapping(value="/main", method = RequestMethod.GET)
//    @ResponseBody
//    public ModelAndView maine () {
//        ModelAndView modelAndView = new ModelAndView("OldWayToDoThings/home");
//        return modelAndView;
//    }

    @RequestMapping(value="/search", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView searching (@RequestParam("searchRequest") String searchString) {

        ModelAndView modelAndView = new ModelAndView("AjaxAttemp/movieList");
        List<Movie> movies = movieDao.findByNameContainingIgnoreCase("%"+searchString+"%");
        modelAndView.addObject("movies", movies);

        return modelAndView;

    }

    @RequestMapping(value="/movieModal", method = RequestMethod.POST)
    public ModelAndView movieModal(String movieId) {
        ModelAndView mav = new ModelAndView("AjaxAttemp/modalContent");
        Movie movie =  movieDao.findByMovieId(Integer.parseInt(movieId));
        mav.addObject("movie", movie);
        return mav;
    }
}
