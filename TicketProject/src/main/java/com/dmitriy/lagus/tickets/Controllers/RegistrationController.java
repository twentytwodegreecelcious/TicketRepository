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
import java.sql.*;
import java.util.List;

/**
 * Created by User on 27.08.2015.
 */
@Controller
public class RegistrationController {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@RequestParam("fname") String firstName, @RequestParam("lname") String lastName,
            @RequestParam("uname") String login,@RequestParam("pw") String password, Model model, HttpSession session) {

/*
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement statement = connection.prepareStatement("SELECT username FROM USERS WHERE username=?");
            statement.setString(1, login);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                //ERROR. User with such username already exists
                model.addAttribute("Error", "message");
                return "Login, Registration/reg";
            }
            rs.close();
            statement.close();
*/
            List<User> users = userDao.findByUsername(login);
            if (users.isEmpty()) {
                User user = new User();
                user.setFirstName(firstName);
                user.setLastName(lastName);
                user.setUsername(login);
                user.setPassword(password);
                userDao.save(user);
            }
/*
            PreparedStatement insert = connection.prepareStatement("INSERT INTO USERS (username, last_name, first_name, password, logged_in) VALUES (?, ?, ?, ?, ?)");
            insert.setString(1, login);
            insert.setString(2, lastName);
            insert.setString(3, firstName);
            insert.setString(4, password);
            insert.setBoolean(5, true);
            insert.execute();
            session.setAttribute("username", login);
            insert.close();
            connection.close();
        } catch (SQLException exc) {
            System.err.println(exc);
        }
*/

        return "Login, Registration/login";
    }
}
