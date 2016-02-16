package com.dmitriy.lagus.tickets.Controllers;

import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieDao;
import com.dmitriy.lagus.tickets.Entities.Movie;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by User on 30.10.2015.
 */
//@Controller
public class SearchController {

//    @Autowired
//    private DataSource dataSource;
//
//    @Autowired
//    private MovieDao movieDao;
//
//    @RequestMapping(value="/search", method = RequestMethod.GET)
//    public ModelAndView modelAndView (@RequestParam("searchRequest") String searchString) {
////        try {
////            Connection connection = dataSource.getConnection();
////            PreparedStatement ps = connection.prepareStatement("SELECT * FROM movies WHERE movie_name LIKE ?");
////            ps.setString(1, "%" + searchString + "%");
////            ResultSet rs = ps.executeQuery();
////            while (rs.next()) {
////                movies.add(new Movie(rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5)));
////            }
////            modelAndView.addObject("movies", movies);
////            rs.close();
////            ps.close();
////            connection.close();
////        }





////        catch (SQLException exc) {
////            System.err.println(exc);
////        }
////        catch (Throwable e) {
////            System.err.println("No movies match your request!");
////        }
//        List<Movie> movies = movieDao.findByNameContaining("%"+searchString+"%");
//        return new ModelAndView("/AjaxAttemp/page", "searchResult", movies);
//    }

}
