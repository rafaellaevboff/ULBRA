const elementoIdDesejado = document.getElementById("idDesejado")

function criarListaPessoas(){
    const data = [
        {nome: "Rafael", idade: 20},
        {nome: "Camila", idade: 30},
        {nome: "Pedro", idade: 26},
        {nome: "Daniel", idade: 25}
    ]
    
    const lista = data.map(item => `<li>${item.nome} - ${item.idade} anos</li>`)
    elementoIdDesejado.innerHTML = lista.join('')
}

criarListaPessoas()