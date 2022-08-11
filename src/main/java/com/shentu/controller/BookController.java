/*
 * Created by IntelliJ IDEA.
 * User: 思凡
 * Date: 2022/5/31
 * Time: 12:50
 * Describe:
 */

package com.shentu.controller;

import com.shentu.entity.Books;
import com.shentu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    // Controller注入Service
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;


    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }


    @RequestMapping("/toAddBook")
    public String addBook() {
        return "addBook";
    }


    @RequestMapping("/addBook")
    public String addBook(Books book) {
        bookService.addBook(book);
        return "redirect:/book/allBook";
    }


    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Model model, int id) {
        Books books = bookService.queryBookById(id);
        model.addAttribute("book", books);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Model model, Books book) {
        bookService.updateBook(book);
        Books books = bookService.queryBookById(book.getBookID());
        model.addAttribute("books", books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/del/{bookId}")
    public String deleteBook(@PathVariable("bookId") int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String bookName, Model model) {
        List<Books> list = bookService.queryBookByName(bookName);
        model.addAttribute("list", list);
        return "allBook";
    }
}
