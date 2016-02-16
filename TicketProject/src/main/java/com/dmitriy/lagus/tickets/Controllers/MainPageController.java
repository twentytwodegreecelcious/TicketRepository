package com.dmitriy.lagus.tickets.Controllers;

import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieDao;
import com.dmitriy.lagus.tickets.DAO.Interfaces.MovieRatingDao;
import com.dmitriy.lagus.tickets.DAO.Interfaces.UserDao;
import com.dmitriy.lagus.tickets.Entities.Movie;
import com.dmitriy.lagus.tickets.Entities.MovieRating;
import com.dmitriy.lagus.tickets.Entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by User on 18.09.2015.
 */
@Controller
public class MainPageController {
    //@Autowired
    //private DataSource dataSource;

    @Autowired
    private UserDao userDao;

    @Autowired
    private MovieDao movieDAO;

    @Autowired
    private MovieRatingDao movieRatingDAO;

//    @RequestMapping(value="/greetings", method = RequestMethod.GET)
//    public ModelAndView modelAndView (HttpSession httpSession) {
//        User user = (User) httpSession.getAttribute("user");
//        String firstname="", lastname="";
//        try {
//            Connection connection = dataSource.getConnection();
//            PreparedStatement ps = connection.prepareStatement("SELECT first_name, last_name FROM users WHERE username=?");
//            ps.setString(1, user.getUsername());
//            ResultSet resultSet=ps.executeQuery();
//            if (resultSet.next()) {
//                firstname = resultSet.getString(1);
//                lastname = resultSet.getString(2);
//            }
//            resultSet.close();
//            ps.close();
//            connection.close();
//        }
//        catch (SQLException exc) {
//            System.out.println(exc);
//        }
//        return new ModelAndView("OldWayToDoThings/main", "greetings", firstname+" "+lastname);
//    }

    @RequestMapping(value = "/userInfo", method = RequestMethod.GET)
    public ModelAndView mav (HttpSession httpSession) {
        ModelAndView mav = new ModelAndView("userInfo");
        User user = (User) httpSession.getAttribute("user");
        mav.addObject(user);
        return mav;
    }

    @RequestMapping(value="/logout", method = RequestMethod.POST)
    public String logout (HttpSession httpSession) {
        User user = (User) httpSession.getAttribute("user");
        user.setLoggedIn(false);
        userDao.save(user);
/*

        try {
            Connection con = dataSource.getConnection();
            PreparedStatement ps = con.prepareStatement("UPDATE users SET logged_in=false WHERE username=?");
            ps.setString(1, user.getUsername());
            httpSession.removeAttribute("user");
            ps.close();
            con.close();
        }
        catch (SQLException exc) {System.err.println(exc);}
*/
        return "Login, Registration/login";
    }

    @RequestMapping(value="/viewMovie", method=RequestMethod.GET)
    public ModelAndView viewMovie () {
        Movie movie;
        ModelAndView mav = new ModelAndView("OldWayToDoThings/viewMovie");
        List<Movie> movies = movieDAO.findByNameContainingIgnoreCase("%The%");
        if (!movies.isEmpty()) {
            movie = movies.get(1);
            mav.addObject(movie);
           // httpSession.setAttribute("movie", movie);
        }
//        try{
//            Connection connection = dataSource.getConnection();
//            PreparedStatement ps = connection.prepareStatement("SELECT producer, description, rating, movie_name FROM movies WHERE movie_id=?;");
//            ps.setInt(1,1);
//            ResultSet rs = ps.executeQuery();
//            if (!rs.next()) {
//                throw new Throwable();
//            }
//            movie = new Movie (rs.getString(1), rs.getString(2), rs.getDouble(3), rs.getString(4));
//            rs.close();
//            ps.close();
//            connection.close();
//            mav.addObject(movie);
//            return mav;
//        }
//        catch (SQLException exc) {
//            System.err.println(exc);
//        }
//        catch (Throwable exception) {
//            System.err.println("No fields match this request");
//        }
        return mav;
    }


    @RequestMapping(value="/displayRecentRatings", method=RequestMethod.GET)
    private ModelAndView displayRecentRatings () {
        ModelAndView mav = new ModelAndView("AjaxAttemp/recentRatings");                                                //BUG
        List<MovieRating> movieRatingList = movieRatingDAO.findTop4ByOrderByModificationDateDesc();                         //TODO Display re-setted ratings
        mav.addObject("movieRatingList", movieRatingList);
        return mav;
    }

}
