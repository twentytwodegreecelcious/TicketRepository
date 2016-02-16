package com.dmitriy.lagus.tickets.Controllers;

import com.dmitriy.lagus.tickets.DAO.Interfaces.UserDao;
import com.dmitriy.lagus.tickets.Entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by User on 28.08.2015.
 */
@Controller
public class LoginController {


    @Autowired
    private DataSource dataSource;

    @Autowired
    private UserDao userDAO;


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@RequestParam("logine") String login, @RequestParam("pass") String password, Model model, HttpSession session) {

//        try {
//            Connection connection = dataSource.getConnection();
//            PreparedStatement ps = connection.prepareStatement("SELECT username, first_name, last_name, password, user_id, logged_in, registered FROM users WHERE username=? AND password=?");
//            ps.setString(1, login);
//            ps.setString(2, password);
//            ResultSet rs = ps.executeQuery();
//            if (!rs.next()) {
//                //ERROR. Username or password is incorrect.
//                return "Login, Registration/login";
//            }
//            User user = new User (rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getBoolean(6), rs.getDate(7), "online");
//            session.setAttribute("user" , user);
//            rs.close();
//            ps.close();
//            connection.close();
//        } catch (SQLException exc) {
//            System.err.println(exc);
//        }
        List<User> users =  userDAO.findByUsernameAndPassword(login, password);
        if (!users.isEmpty()) {
            User user = users.get(0);
            user.setLoggedIn(true);
            session.setAttribute("user", user);

        }
        else {
            return "Login, Registration/login";
        }
        return "AjaxAttemp/page";
    }
}