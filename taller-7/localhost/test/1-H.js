// Mostrar los paıses que limitan con Francia o polinia.
db.country.find(
    { borders: { $in: ["FRA", "POL"] } }
)