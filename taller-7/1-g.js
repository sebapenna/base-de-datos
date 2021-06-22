// Mostrar solo los nombres de los paıses que limitan con Francia.
db.country.find(
    { borders: "FRA" },
    { _id: 0, name: 1 }
    )