db.sabores.createIndex({ nome: "text" })
db.sabores.find({ $text: { $search: "calabresa" } })

db.clientes.createIndex({ nome: "text" })
db.clientes.find({ $text: { $search: "João" } })

db.pedidos.createIndex({ "data_hora": "text" })
db.pedidos.find({ $text: { $search: "2023-05-22" } })