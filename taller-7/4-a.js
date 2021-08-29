// Mostrar el nombre y el area de los paises africanos 
// que tengan mas de 1 millon de km cuadrados, 
// ordenados por area de mayor a menor.
db.country.aggregate(
    [
        {
            $match: {
                $and: [
                    {
                        region: "Africa"
                    },
                    {
                        area: {
                            $gt: 1000000
                        }
                    }
                    ]
            }
        },
        {
            $sort: { area: -1 }
        },
        {
            $project: { name: 1, _id: 0 }
        }
    ]
)