const data = [
    {nome: "Rafael", idade: 20},
    {nome: "Camila", idade: 30},
    {nome: "Pedro", idade: 26},
    {nome: "Daniel", idade: 25}
]

function inicialize(){
    cep()
    const elementoLista = document.getElementById("elementoLista") 
    
    elementoLista.innerHTML = listaDePessoas(data)
    console.log("TESTE");
}

function listaDePessoas(data){
    return data.map(item =>{ //arrow-function
        return (
            (`<li>${item.nome} - ${item.idade} anos</li>`)
        )}
    ).join('')
}

//função assíncrona
async function cep(){
    const response = await fetch("https://viacep.com.br/ws/95577000/json/")
    const endereco = await response.json()
    meuComponenteEndereco(endereco)
    console.log(response);
    console.log(endereco);
}

function meuComponenteEndereco(endereco){
    const meuEndereco = document.getElementById("meuEndereco")

    meuEndereco.innerHTML = `
    <h1>${endereco.cep}</h1>
    <h1>${endereco.localidade}</h1>
    <h1>${endereco.bairro}</h1>
    `
}