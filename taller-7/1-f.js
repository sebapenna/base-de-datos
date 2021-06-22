//  Mostrar las capitales de los paIses que no usen el dOlar estadounidense (cOdigo: USD)
//   ni el dolar canadiense (codigo: CAD) como moneda oficial.
db.country.find( {currency: {$nin: ["USD", "CAD"]}}, { capital: 1 }  )