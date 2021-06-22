// Mostrar la cantidad de libros de mas de 400 paginas y que tengan un solo autor
db.books.find(
    {
        pageCount: { $gt: 400 },
        authors: { $size: 1 }
    }
).count()