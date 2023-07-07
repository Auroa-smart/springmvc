package com.ssm.controller;

import com.ssm.pojo.Books;
import com.ssm.pojo.Users;
import com.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import static java.awt.SystemColor.text;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;


    @RequestMapping("/allUser")
    public String list(Model model) {
//        ModelAndView mView = new ModelAndView();
        List<Users> list = userService.queryAllUser();
        System.out.println(list);
        model.addAttribute("userlist",list);
//        session.setAttribute("userlist",list);

//        mView.addObject("userlist", list);
//        mView.setViewName("allUser");
        return "allUser";
    }

    @RequestMapping("/toLogin")
    public String toAddPaper() {
        return "login";
    }

    @RequestMapping("/toAddUser")
    public String toAddUser() {
        return "addUser";
    }
    @RequestMapping("/addUser")
    public String addUser(Users user){
        user.setCreated_time(new Date(new java.util.Date().getTime()));
        userService.addUser(user);
        System.out.println("注册成功");
        return "redirect:/user/allUser";
    }

    @RequestMapping("/toRegister")
    public String toReisterPaper() {
        return "register";
    }
    @RequestMapping("/register")
    public String register(Users user){
        user.setCreated_time(new Date(new java.util.Date().getTime()));
        userService.addUser(user);
        System.out.println("注册成功");
        return "login";
    }

    @RequestMapping("/login")
    public String login(Users user1, HttpSession session, HttpServletResponse response) throws IOException {
        Users user2 = userService.queryUserByName(user1.getUsername());
//        HttpSession session = request.getSession();
        if(user2!=null){
            if( user2.getPassword().equals(user1.getPassword())){
                session.setAttribute("currentUser",user2);
                System.out.println("登录成功");
                return "redirect:/index.jsp";
            }else{
                /* 密码错误 */
                response.setContentType("text/html;charset=UTF-8");
                response.setCharacterEncoding("UTF-8");
                PrintWriter out = response.getWriter();
                out.print("<script language=\"javascript\">alert('用户名或密码错误！');</script>");
                return "login";
            }
//        if( user2.getRolename().equals("管理员")){
//            return "redirect:/user/allUser";
//        }
        }
            return "redirect:/index.jsp";
    }


    @RequestMapping("/toHome")
    public String toHomePaper(){
        return "redirect:/index.jsp";
    }



    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/index.jsp";
    }


    @RequestMapping("/toUpdateUser")
    public String toUpdateUser(Model model, int user_id) {
            Users users = userService.queryUserById(user_id);
            model.addAttribute("user",users );
            System.out.println(user_id);
            return "updateUser";
    }

//管理员只能修改自己的密码
    @RequestMapping("/toUpdateAdmin")
    public String toUpdateAdmin(Users user) {
        userService.updateUser(user);
        return "updateAdmin";
    }

    @RequestMapping("/updateUser")
    public String updateUser(Model model, Users user) {
        System.out.println(user);
        userService.updateUser(user);
       Users users = userService.queryUserById(user.getUser_id());
        model.addAttribute("users", users);
        return "redirect:/user/allUser";
    }

    @RequestMapping("/del/{user_id}")
    public String deleteBook(@PathVariable("user_id") int user_id) {
        userService.deleteBookById(user_id);
        return "redirect:/user/allUser";
    }

    @RequestMapping("searchUser")
    public String searchBook(Model model,String username){
        List<Users> list = userService.queryLikeByName(username);
        model.addAttribute("userlist",list);
        return "allUser";
    }


}
