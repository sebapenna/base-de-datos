// Eliminar de la base el ‘pais’ “Falkland island”.
db.country.deleteMany(
    { altSpellings: { $in: [/Falkland island/i] } }
)
