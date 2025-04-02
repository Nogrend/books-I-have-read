package nogrend.booksihaveread.catalog;

import nogrend.booksihaveread.catalog.domain.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {

    @GetMapping("/books")
    public String books(Model model) {
        model.addAttribute("model", Book.of("test", "123-456-7890"));
        return "homePage";
    }
}
