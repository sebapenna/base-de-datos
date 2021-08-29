// Para los paises que tienen mas de 4 paises limistrofes, 
// mostrar todos sus campos, y
// ademas su nombre comun como un campo de primer nivel
db.country.aggregate(
    [
        {
            $addFields: {
                border_count: { $size: "$borders" },
                common_name: "$name.common"
            }
        },      
        { $match: { border_count: { $gt: 4 } } },
        { $project: { border_count: 0 } }
    ]
)