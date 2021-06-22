// Mostrar los paises que limitan con francia o polonia
db.country.find(
    { $or: [{ borders: "POL" }, { borders: "FRA" }] }
)