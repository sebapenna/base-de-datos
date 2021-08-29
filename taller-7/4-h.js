// Mostrar cuantos libros hay en cada categoria
db.books.aggregate(
    [
        { $unwind: "$categories" },
        { $group: { _id: "$categories", count: { $sum: 1 } }
        }
    ]
)