//busca simples - que busca todas os dados na collection clientes
db.clientes.find()

//busca todos pedidos de Maria Santos e o mostra no terminal
db.pedidos.find(
    {"cliente.nome": "Maria Santos"}
)