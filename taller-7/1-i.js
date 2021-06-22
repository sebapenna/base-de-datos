// Mostrar los paises que limitan con francia y polonia
db.country.find({ borders: { $all: ["FRA", "POL"] } })