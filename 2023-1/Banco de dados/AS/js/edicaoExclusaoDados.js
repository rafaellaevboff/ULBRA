//edita número de cliente
db.clientes.updateOne(
    { nome: "João Silva" }, { $set: { telefone: "(11) 9876-5432" } }
);

//reajusta o valor de todas os sabores com aumento de 10%
db.sabores.updateMany(
    { }, 
    { $mul: { valor: 1.1 } }
);

// adiciona nova pizza em pedido da cliente Maria Santos
db.pedidos.updateOne(
    {"cliente.nome": "Maria Santos"},
    { $push: { "pizzas": {
        nome: "Pizza de frango com catupiry",
        tamanho: { tamanho: "M", valor: 25 },
        sabores: [
            { nome: "frango", valor: 20 },
            { nome: "catupiry", valor: 20 }
        ]
        }} 
    }
)

//deleta pedido da cliente Ana Pereira
db.pedidos.deleteOne({
    "cliente.nome": "Ana Pereira", data_hora: "2023-05-22 11:56:12"
})

//deleta pedidos que são do tipo entrega
db.pedidos.deleteMany(
    { "pedidos.tipo": "entrega"}
)