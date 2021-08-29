// Para todos los libros que tengan 
//  algun autor con nombre John o James, mostrar el
//  nombre, el codigo ISBN y la cantidad de autores. 
//  Muestra la salida ordenada descendenmente por la cantidad de autores, 
//  y luego ascendentemente por el codigo ISBN
db.books.aggregate(
    [
        {
            $match: {
                $or: [ { authors: /John/ }, { authors: /James/ } ]
            }
        },
        {
            $project: {
                titles: 1,
                isbn: 1,
                authors_count: { $size: "$authors" }
            }
        },
        {
            $sort: { authors_count: -1, isbn: 1 }
        }
    ]
)