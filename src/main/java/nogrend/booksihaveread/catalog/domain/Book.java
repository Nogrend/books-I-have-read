package nogrend.booksihaveread.catalog.domain;

public record Book(
        BookId id,
        String title,
        String isbn
) {
}
