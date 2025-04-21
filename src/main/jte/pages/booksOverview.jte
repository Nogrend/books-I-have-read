@import nogrend.booksihaveread.catalog.domain.Book

@import java.util.List
@param List<Book> books

@template.layout.main(content = @`

    <h1>Books Overview</h1>

    @if (books.isEmpty())
        <p>No books found.</p>
    @else
        <table>
            <thead>
            <tr>
                <th>Title</th>
                <th>ISBN</th>
                <th>ID</th>
            </tr>
            </thead>
            <tbody>
            @for (Book book : books)
                <tr>
                    <td>${book.title()}</td>
                    <td>${book.isbn()}</td>
                    <td>${book.id().id().toString()}</td>
                </tr>
            @endfor
            </tbody>
        </table>
    @endif
`,
    contentCss = "books"
)
