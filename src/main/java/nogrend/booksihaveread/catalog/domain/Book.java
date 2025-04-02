package nogrend.booksihaveread.catalog.domain;

public record Book(
        BookId id,
        String title,
        String isbn
) {
    public static Book of(String title, String isbn) {
        return new Book(new BookId(), title, isbn);
    }
}
