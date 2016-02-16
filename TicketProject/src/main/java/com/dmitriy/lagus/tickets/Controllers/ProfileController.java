package com.dmitriy.lagus.tickets.Controllers;

import com.dmitriy.lagus.tickets.DAO.Interfaces.UserDao;
import com.dmitriy.lagus.tickets.Entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by User on 16.10.2015.
 */
@Controller
public class ProfileController {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private UserDao userDao;

    @RequestMapping(method = RequestMethod.POST, value="/profile")
    public ModelAndView viewData(HttpSession httpSession) {
        ModelAndView mav = new ModelAndView("OldWayToDoThings/profile");
        User user = (User) httpSession.getAttribute("user");
        mav.addObject(user);
        return mav;
    }

    @RequestMapping (method = RequestMethod.GET, value="/modifyProfile")
    public String modifyProfile (@RequestParam("newUsername") String newUname,@RequestParam("newFirstName") String newFname, @RequestParam("newLastName") String newLname, HttpSession httpSession) {


        List<User> users = userDao.findByUsername(((User)httpSession.getAttribute("user")).getUsername());
        if (!users.isEmpty()) {
            User user = (User) httpSession.getAttribute("user");
            user.setFirstName(newFname);
            user.setLastName(newLname);
            userDao.save(user);
            return "AjaxAttemp/page";
        }
        else {
            return "AjaxAttemp/page";
        }
        /*
        boolean flag = false;
        int a = 1;
        try {
            Connection connection = dataSource.getConnection();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM users WHERE username=?");
            ps.setString (1,  ((User) httpSession.getAttribute("user")).getUsername());
            ResultSet rs = ps.executeQuery();
            if (!rs.next()) {
                return "OldWayToDoThings/profile";
            }
            rs.close();
            ps.close();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE users SET first_name=?, last_name=? WHERE username=?");
            //User user1 = (User) httpSession.getAttribute("user");
            preparedStatement.setString(1, newFname);
            preparedStatement.setString(2, newLname);
            preparedStatement.setString (3,  ((User) httpSession.getAttribute("user")).getUsername());
            preparedStatement.executeUpdate();
            preparedStatement.close();
            connection.close();
            flag = true;
        }
        catch (SQLException exc){
            System.err.println(exc);
        }
        finally {
            if (flag) {
                User user = (User) httpSession.getAttribute("user");
                User newUser = new User (newUname, newFname, newLname, user.getPassword(), user.getUserId(), true, user.getRegistered(), "online");
                httpSession.removeAttribute("user");
                httpSession.setAttribute("user", newUser);
            }
        }
        return "OldWayToDoThings/profile";
        */
    }
}
