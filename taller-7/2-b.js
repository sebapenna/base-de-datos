// Mostrar en forma alfabetica por titulo, los libros que en su titulo o en su descripcion
// corta contengan la palabra “web”
db.books.find(
    {
        $or: [
            { title: /web/i },
            { shortDescription: /web/i }
        ]
    }
).sort({ title: 1 })