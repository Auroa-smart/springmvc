package com.ssm.controller;

import com.ssm.pojo.Books;
import com.ssm.pojo.Users;
import com.ssm.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBook")
    public String list(Model model,HttpSession session) {
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("booklist", list);
        Users user = (Users) session.getAttribute("currentUser");
        System.out.println(user);
        if(user!=null){
            if(user.getRolename().equals("管理员")){
                return "allBook";
            }
        }
        return "allBookList";
    }

//    @RequestMapping("/allBookList")
//    public String booklist(Model model) {
//        List<Books> list = bookService.queryAllBook();
//        System.out.println(list);
//        model.addAttribute("booklist", list);
//        return "allBookList";
//    }
    @RequestMapping("searchBook")
    public String searchBook(Model model,String book_title,HttpSession session){
        List<Books> list = bookService.searchBook(book_title);
        model.addAttribute("booklist",list);
        Users user = (Users) session.getAttribute("currentUser");
        if(user!=null){
            if(user.getRolename().equals("管理员")){
                return "allBook";
            }
        }
        return "allBookList";
    }

    @RequestMapping("/toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addPaper(Books books) {
        books.setCreated_time(new Date(new java.util.Date().getTime()));
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Model model, int book_id) {
        Books books = bookService.queryBookById(book_id);
        System.out.println(books);
        model.addAttribute("book",books );
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Model model, Books book) {
        System.out.println(book);
        bookService.updateBook(book);
        Books books = bookService.queryBookById(book.getBook_id());
        model.addAttribute("books", books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/del/{book_id}")
    public String deleteBook(@PathVariable("book_id") int book_id) {
        bookService.deleteBookById(book_id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/addToCart")
    public String addToCart(Model model, HttpSession session, HttpServletResponse response) throws IOException {
        Users user = (Users) session.getAttribute("currentUser");
        if(user == null){
            response.setContentType("text/html;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            PrintWriter out = response.getWriter();
//            out.print("alert('用户名或密码错误！');");
            out.print("<script language='javascript'> window.alert('请先登录！')</script>");
            return "loginError";
        }
        model.addAttribute("color","red");
        return "redirect:/book/allBook";
    }


}