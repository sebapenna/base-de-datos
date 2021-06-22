// Mostrar el nombre y la cantidad de paginas de 12 libros publicados, 
// ordenados descendentemente por su cantidad de paaginas.
db.books.find(
    {
        publishedDate: {
            $exists: true
        },
    },
    {
        _id: 0,
        title: 1,
        pageCount: 1
    }
).limit(12).sort({ pageCount: -1 })