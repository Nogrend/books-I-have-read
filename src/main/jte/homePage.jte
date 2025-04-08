@import nogrend.booksihaveread.catalog.domain.Book

@import java.util.List
@param List<Book> books

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Books Overview</title>
    <style>
        body {
            background-color: #f4f6f8;
            font-family: Arial, sans-serif;
            padding: 2rem;
        }

        h1 {
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #e0e0e0;
        }

        th {
            background-color: #1976d2;
            color: white;
        }

        tr:hover {
            background-color: #f0f8ff;
        }
    </style>
</head>
<body>
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
</body>
</html>