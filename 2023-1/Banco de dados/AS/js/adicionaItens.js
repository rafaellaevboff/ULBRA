//CRIA O BANCO
// use pizzaria

//CRIA A COLEÇÃO CLIENTES:
db.clientes.insertMany([
    {
        "nome": "João Silva",
        "telefone": "(11) 1234-5678",
        "endereço": "Rua A, 123"
    },
    {
        "nome": "Maria Santos",
        "telefone": "(11) 2345-6789",
        "endereço": "Avenida B, 456"
    },
    {
        "nome": "Carlos Oliveira",
        "telefone": "(11) 3456-7890",
        "endereço": "Rua C, 789"
    },
    {
        "nome": "Ana Pereira",
        "telefone": "(11) 4567-8901",
        "endereço": "Avenida D, 012"
    },
    {
        "nome": "Pedro Almeida",
        "telefone": "(11) 5678-9012",
        "endereço": "Rua E, 345"
    },
    {
        "nome": "Mariana Costa",
        "telefone": "(11) 6789-0123",
        "endereço": "Avenida F, 678"
    },
    {
        "nome": "José Santos",
        "telefone": "(11) 7890-1234",
        "endereço": "Rua G, 901"
    },
    {
        "nome": "Fernanda Rodrigues",
        "telefone": "(11) 8901-2345",
        "endereço": "Avenida H, 234"
    },
    {
        "nome": "Ricardo Souza",
        "telefone": "(11) 9012-3456",
        "endereço": "Rua I, 567"
    },
    {
        "nome": "Amanda Lima",
        "telefone": "(11) 0123-4567",
        "endereço": "Avenida J, 890"
    },
    {
        "nome": "Daniel Gonçalves",
        "telefone": "(11) 1234-5678",
        "endereço": "Rua K, 123"
    },
    {
        "nome": "Laura Carvalho",
        "telefone": "(11) 2345-6789",
        "endereço": "Avenida L, 456"
    },
    {
        "nome": "Paulo Martins",
        "telefone": "(11) 3456-7890",
        "endereço": "Rua M, 789"
    },
    {
        "nome": "Lúcia Oliveira",
        "telefone": "(11) 4567-8901",
        "endereço": "Avenida N, 012"
    },
    {
        "nome": "Gustavo Pereira",
        "telefone": "(11) 5678-9012",
        "endereço": "Rua O, 345"
    },
    {
        "nome": "Mariana Almeida",
        "telefone": "(11) 6789-0123",
        "endereço": "Avenida P, 678"
    },
    {
        "nome": "Roberto Costa",
        "telefone": "(11) 7890-1234",
        "endereço": "Rua Q, 901"
    },
    {
        "nome": "Patrícia Santos",
        "telefone": "(11) 8901-2345",
        "endereço": "Avenida R, 234"
    },
    {
        "nome": "Fábio Rodrigues",
        "telefone": "(11) 9012-3456",
        "endereço": "Rua S, 567"
    },
    {
        "nome": "Mariana Lima",
        "telefone": "(11) 0123-4567",
        "endereço": "Avenida T, 890"
    }
])

//CRIA COLEÇÃO BEBIDAS
db.bebidas.insertMany([
    {
        "nome": "Água mineral",
        "volume":"500ml",
        "valor": 2.50
    },
    {
        "nome": "Água com gás",
        "volume":"500ml",
        "valor": 3.00
    },
    {
        "nome": "Água mineral",
        "volume":"1l",
        "valor": 5
    },
    {
        "nome": "Água com Gás",
        "volume":"1l",
        "valor": 6
    },
    {
        "nome": "Pepsi",
        "volume":"600ml",
        "valor": 5
    },
    {
        "nome": "Guaraná",
        "volume":"600ml",
        "valor": 5
    },
    {
        "nome": "Coca-Cola",
        "volume":"600ml",
        "valor": 5
    },
    {
        "nome": "Sprite",
        "volume":"600ml",
        "valor": 5
    },
    {
        "nome": "Fanta Uva",
        "volume":"600ml",
        "valor": 5
    },
    {
        "nome": "Fanta Guaraná",
        "volume":"600ml",
        "valor": 5
    },
    {
        "nome": "Pepsi",
        "volume":"2l",
        "valor": 10
    },
    {
        "nome": "Guaraná",
        "volume":"2l",
        "valor": 10
    },
    {
        "nome": "Coca-Cola",
        "volume":"2l",
        "valor": 10
    },
    {
        "nome": "Sprite",
        "volume":"2 l",
        "valor": 10
    },
    {
        "nome": "Fanta Uva",
        "volume":"2l",
        "valor": 10
    },
    {
        "nome": "Fanta Guaraná",
        
        "valor": 10
    }
])

//CRIA COLEÇÃO SABORES
db.sabores.insertMany([
    {
        "nome": "calabresa",
        "valor":20
    },
    {
        "nome": "quatro queijos",
        "valor":25
    },
    {
        "nome": "coração",
        "valor":35
    },
    {
        "nome": "da casa",
        "valor":30
    },
    {
        "nome": "portuguesa",
        "valor":30
    },
    {
        "nome": "alho e óleo",
        "valor":30
    },
    {
        "nome": "bacon",
        "valor":30
    },
    {
        "nome": "frango com catupiry",
        "valor":25
    },
    {
        "nome": "chocolate preto com morango",
        "valor":20
    },
    {
        "nome": "chocolate preto e mms",
        "valor":20
    },
    {
        "nome": "chocolate branco com morango",
        "valor":20
    },
    {
        "nome": "chocolate branco e mms",
        "valor":20
    },
    {
        "nome": "banana com canela",
        "valor":20
    },
    {
        "nome": "prestígio",
        "valor":20
    },
    {
        "nome": "charge",
        "valor":20
    }
])

//CRIA COLEÇÃO TAMANHOS
db.tamanhos.insertMany([
    {
        "tamanho":"P",
        "valor":10
    },
    {
        "tamanho":"M",
        "valor":20
    },
    {
        "tamanho":"G",
        "valor":30
    }
])

//CRIA A COLEÇÃO PEDIDOS:
//inserir vários pedidos junto:
const pedidos = [   
    {
        "data_hora": "2023-05-22 11:56:12",
        "tipo": "entrega",
        "endereco_entrega": "Três Cachoeiras/RS, Rua da Paz, 367",
        "cliente": {
            "id":"649ae62c6e0f1d62caed7d25",
            "nome": "João Silva",
            "telefone": "(11) 1234-5678",
            "endereço": "Rua A, 123"
        },
        "pizzas": [
            {
                "nome": "Pizza de calabresa e quatro queijos",
                "tamanho":{
                    "tamanho":"G",
                    "valor":30
                },
                "sabores":[
                    {
                        "nome": "calabresa",
                        "valor":25
                    },
                    {
                        "nome": "quatro queijos",
                        "valor":25
                    }
                ]
            },
            {
                "nome": "Pizza de chocolatepreto com morango chocolate preto com mms",
                "tamanho":{
                    "tamanho":"M",
                    "valor":20
                },
                "sabores":[
                    {
                        "nome": "chocolate preto com morango",
                        "valor":20
                    },
                    {
                        "nome": "chocolate preto e mms",
                        "valor":20
                    }
                ]
            }
        ],
        "bebidas": [
            {
                "nome": "Coca-Cola",
                "volume":"2l",
                "valor": 10
            }
        ],
        "valor_pedido": 0
    },

    {
        "data_hora": "2023-05-22 11:56:12",
        "tipo": "entrega",
        "endereco": "Três Cachoeiras/RS, Rua B, 200",
        "cliente": {
            "id":"649ae62c6e0f1d62caed7d26",
            "nome": "Maria Santos",
            "telefone": "(11) 2345-6789",
            "endereço": "Avenida B, 456"
        },
        "pizzas": [
            {
                "nome": "Pizza de coração e bacon",
                "tamanho": {
                    "tamanho":"M",
                    "valor":20
                },
                "sabores":[
                    {
                        "nome": "coração",
                        "valor":35
                    },
                    {
                        "nome": "bacon",
                        "valor":20
                    }
                ]
            },
            {
                "nome": "Pizza de pretígio e chocolate branco e mms",
                "tamanho": {
                    "tamanho":"M",
                    "valor":20
                },
                "sabores":[
                    {
                        "nome": "prestígio",
                        "valor":20
                    },
                    {
                        "nome": "chocolate branco e mms",
                        "valor":20
                    }
                ]
            }
        ],
        "bebidas": [
            {
                "nome": "Água com gás",
                "volume":"600ml",
                "valor": 3.50
            },
            {
                "nome": "Pepsi",
                "volume":"2l",
                "valor": 10
            }
        ],
        "valor_pedido": 0
    },

    {
        "data_hora": "2023-05-22 11:56:12",
        "tipo": "local",
        "mesa": 3,
        "cliente": {
            "id":"649ae62c6e0f1d62caed7d27",
            "nome": "Carlos Oliveira",
            "telefone": "(11) 3456-7890",
            "endereço": "Rua C, 789"
        },
        "pizzas": [
            {
                "nome": "Pizza de alho e óleo e portuguesa",
                "tamanho": {
                    "tamanho":"M",
                    "valor":20
                },
                "sabores":[
                    {
                        "nome": "alho e óleo",
                        "valor":30
                    },
                    {
                        "nome": "portuguesa",
                        "valor":30
                    }
                ]
            },
            {
                "nome": "Pizza de banana com canela e charge",
                "tamanho": {
                    "tamanho":"P",
                    "valor":10
                },
                "sabores":[
                    {
                        "nome": "banana com canela",
                        "valor":20
                    },
                    {
                        "nome": "charge",
                        "valor":20
                    }
                ]
            }
        ],
        "bebidas": [
            {
                "nome": "Guaraná",
                "volume":"2l",
                "valor": 10
            }
        ],
        "valor_pedido": 0
    }
];
  
pedidos.forEach((pedido) => {
    let valor_pedido = 0;

    pedido.pizzas.forEach((pizza) => {
        const tamanho = pizza.tamanho.valor;
        const qtdSabores = pizza.sabores.length;
        const valor_sabores = pizza.sabores.reduce((total, sabor) => total + sabor.valor, 0);

        const valor_pizza = tamanho + (valor_sabores / qtdSabores);
        valor_pedido += valor_pizza;
    });

    pedido.bebidas.forEach((bebida) => {
        valor_pedido += bebida.valor;
    });

    pedido.valor_pedido = valor_pedido;
});

db.pedidos.insertMany(pedidos)
  
//inserir um pedido por vez
const pedido = (
    {
        "data_hora": "2023-05-22 11:56:12",
        "tipo": "local",
        "mesa": 3,
        "cliente": {
            "id":"649ae62c6e0f1d62caed7d28",
            "nome": "Ana Pereira",
            "telefone": "(11) 4567-8901",
            "endereço": "Avenida D, 012"
        },
        "pizzas": [
        {
            "nome":"Pizza de calabresa e coração",
            "tamanho": {
                "tamanho":"M",
                "valor":20
            },
            "sabores":[
                {
                    "nome":"calabresa",
                    "valor":20
                },
                {
                    "nome":"coração",
                    "valor":35
                }
            ]
        },
        {
            "nome": "Pizza de chocolate com morango e mms",
            "tamanho": {
                "tamanho":"M",
                "valor": 20
            },
            "sabores":[
                {
                    "nome":"chocolate preto com morango",
                    "valor":20
                },
                {
                    "nome":"chocolate preto e mms",
                    "valor":20
                }
            ]
        }
        ],
        "bebidas": [
            {
                "nome":"Pepsi 600ml",
                "valor":5
            }
        ],
        "valor_pedido":0
    }
)

let valor_pedido = 0;

pedido.pizzas.forEach((pizza) => {
    const tamanho = pizza.tamanho.valor;
    const sabores = pizza.sabores.length;
    const valor_sabores = pizza.sabores.reduce((total, sabor) => total + sabor.valor, 0);

    const valor_pizza = tamanho + (valor_sabores / sabores);
    valor_pedido += valor_pizza;
});

pedido.bebidas.forEach((bebida) => {
    valor_pedido += bebida.valor;
});

pedido.valor_pedido = valor_pedido;

db.pedidos.insertOne(pedido)