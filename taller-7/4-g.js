// Listar el tıtulo y la cantidad de hojas 
//  de los 10 libros con mas hojas, 
//  ordenados alfabeticamente por titulo
db.books.aggregate(
    [
        { $sort: { pageCount: -1 } },
        { $limit: 10 },
        { $sort: { title: 1 } },
        { $project: { title: 1, pageCount: 1 } } 
    ]
)