// Mostrar los paises con un area igual o menor a 20
db.country.find( {area: {$lte: 20}})