package nogrend.booksihaveread.catalog;

import nogrend.booksihaveread.catalog.domain.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/books")
public class BookController {

    @GetMapping("/overview")
    public String bookOverview(Model model) {
        List<Book> books = List.of(
                Book.of("Clean Code", "9780132350884"),
                Book.of("The Pragmatic Programmer", "9780135957059"),
                Book.of("Head First Design Patterns", "9780596007126")
        );
        model.addAttribute("books", books);
        return "pages/booksOverview";
    }

    @PostMapping("/books")
    @ResponseBody
    public Book addBook(@RequestBody Book book) {
        return book;
    }
}
