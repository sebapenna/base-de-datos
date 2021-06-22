// Mostrar los paises cuyo nombre oficial contenga la palabra “Republic” y que tengan
// exactamente 3 paises limitrofes
db.country.find({ "name.official": /Republic/, borders: { $size: 3 } })