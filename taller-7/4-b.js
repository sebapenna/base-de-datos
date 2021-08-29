// Para los paises que tienen mas de 4 paises limistrofes, 
// mostrar solamente su nombre comun como un campo de primer nivel
db.country.aggregate(
    [
        {
            $project: {
                border_count: { $size: "$borders" },
                name: "$name.common"
            }
        },        
        { $match: { border_count: { $gt: 4 } } },
        { $project: { name: 1, _id: 0 } }
    ]
)