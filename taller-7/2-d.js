// Mostrar los libros publicados entre 2008 y 2010 (inclusive), 
// ordenados ascendentemente por su id
db.books.find(
    {
        $and: [
            {
                publishedDate: {
                    $gt: ISODate("2008-01-01")
                }
            },
            {
                publishedDate: {
                    $lt: ISODate("2011-01-01")
                }
            }
        ]

    }
).sort({ _id: 1 })