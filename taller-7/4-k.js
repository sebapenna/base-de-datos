// Para cada autor, mostrar su nombre, 
//  el numero mınimo de paginas 
//  y el numero maximo de paginas de entre sus libros.
db.books.aggregate(
    [
        { $unwind: "$authors" },
        {
            $group: {
                _id: "$authors",
                min_pages: { $min: "$pageCount" },
                max_pages: { $max: "$pageCount" }
            }
        }
    ]
)