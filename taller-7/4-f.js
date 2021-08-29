// Hacer un listado con los nombres de los libros 
//  y cada unos de los autores, por linea
db.books.aggregate(
    [
        { $unwind: "$authors" },
        
        {
            $project: {
                title: 1,
                authors: 1,
                _id: 0
            }
        }
    ]
)