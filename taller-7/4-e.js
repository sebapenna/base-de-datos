// Mostrar para cada region, 
//  el nombre de la misma 
//  y el area total 
//  de todos los paıses que contiene.
db.country.aggregate(
    [
        {
            $group: {
                _id: "$region",
                total_area: { $sum: "$area" }
            }
        }
    ]
)