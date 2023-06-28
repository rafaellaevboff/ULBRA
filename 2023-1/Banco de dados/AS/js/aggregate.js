//quer mostrar pedidos com dados atuais do cliente
db.pedidos.aggregate([
    {
      $lookup: {
        from: "clientes",
        localField: "cliente.nome",
        foreignField: "nome",
        as: "cliente"
      }
    }
  ])


//mostra quantidade de pedidos feitos por cada cliente
db.pedidos.aggregate([
{
    $group: {
        _id: "$cliente.nome",
        count: { $sum: 1 }
    }
}
])

//mostra quantidade de pedidos que foram feitos para comer no local e a quantidade de pedidos para entrega
db.pedidos.aggregate([
    {
      $group: {
        _id: "$tipo",
        count: { $sum: 1 },
        valor_total: { $sum: "$valor_pedido" }
      }
    }
  ])
  