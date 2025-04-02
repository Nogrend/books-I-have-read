package nogrend.booksihaveread.catalog;

import nogrend.booksihaveread.catalog.domain.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {

    @GetMapping("/books")
    public String books(Model model) {
        model.addAttribute("model", new Book(1, "test", "xxxxxxxxxxxxx"));
        return "homePage";
    }
}
