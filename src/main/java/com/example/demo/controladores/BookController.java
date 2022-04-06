package com.example.demo.controladores;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.modelos.Book;
import com.example.demo.servicios.BookService;


@Controller
public class BookController 
{
	
	private final BookService bookService;
	
	public BookController(BookService bookService) 
	{
		this.bookService = bookService;
	}

	@RequestMapping("/books/{id}")
	public String show (Model model,@PathVariable("id") Long id)
	{
		Book book = bookService.findBook(id);
		
		model.addAttribute("title",book.getTitle());
		model.addAttribute("description",book.getDescription());
		model.addAttribute("language",book.getLanguage());
		model.addAttribute("pages",book.getNumberOfPages());
		
		return "show.jsp";
	}
	
	@RequestMapping("/books")
    public String index(Model model) 
	{
        List<Book> books = bookService.allBooks();
        model.addAttribute("books", books);
        return "index.jsp";
    }

}
