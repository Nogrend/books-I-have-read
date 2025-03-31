package nogrend.booksihaveread.book;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {

    @GetMapping("/books")
    public String books(Model model) {
        model.addAttribute("model", new Book("test"));
        return "homePage";
    }
}
