// Mostrar todos los paises de America con un area menor a 100
db.country.find( {region: "Americas", area: {$lt: 100}})