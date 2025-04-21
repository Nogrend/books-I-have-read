@param gg.jte.Content content
@param String contentCss = null

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Spring Boot App</title>
    <link rel="stylesheet" href="/css/layout/layout.css">
    @if(contentCss != null)
        <link rel="stylesheet" href="/css/${contentCss}.css">
    @endif
    <script src="https://cdn.tailwindcss.com"></script>
</head>

<body class="bg-gray-100">
<div class="min-h-full">
    <div class="navbar">
        <a class="active" href="/">Home</a>
        <a href="/books/overview">Books</a>
    </div>

    <!-- Main content -->
    <main>
        <div class="mx-auto max-w-7xl py-6 sm:px-6 lg:px-8">
            <!-- https://jte.gg/syntax/#content -->
            ${content}
        </div>
    </main>
</div>
</body>
</html>