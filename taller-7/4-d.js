// Mostrar el nombre oficial, capital y region, de los paises que 
//  tengan mas de una moneda oficial, 
//  esta encerrado solamente por tierra 
//  o su superficie tiene menos de 70.000 km cuadrados.
db.country.aggregate(
    [
        {
            $addFields: { currency_count: { $size: "$currency" } }
        },      
        { $match: { $or: [ { landlocked: true }, { area: { $lt: 70000 } } ] } },
        { $project: { "name.official": 1, capital: 1, region: 1 } }
    ]
)