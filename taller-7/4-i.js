// Listar la cantidad de libros que tienen mas de 2 categorias
db.books.aggregate(
    [
        {
            $project: {
                categories_count: {
                    $size: "$categories"
                }
            }
        },
        {
            $match: {
                categories_count: {
                    $gt: 2
                }
            }
        },
        {
            $count: "categories_count"
        }
    ]
)