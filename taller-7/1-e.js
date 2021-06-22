// Mostrar todos los paises que esten en Europa o que use el euro como moneda oficial
db.country.find( {$or: [{region: "Europe"}, {currency: {$in: ["EUR"]}} ] } )