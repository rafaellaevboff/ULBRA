# BDD

<br/>

## USER STORIE: COMPRAR ANÚNCIO

### Cliente cadastrar seus dados no site
- *DADO QUE* cliente tenha esquecido de cadastrar ao menos um telefone para contato

- *QUANDO* clicar no botão para cadastrar seus dados

- *ENTÃO* site não irá salvar e a seguinte mensagem aparecerá na tela: "Você deve adicionar pelo menos um número para contato para que seu cadastro esteja completo."

<br/>

### Mudar tipo de anúncio
- *DADO QUE* cliente queira mudar anúncio simples para anúncio destaque

- *QUANDO* clicar no botão "Mudar tipo de anúncio"

- *ENTÃO* site irá abrir uma aba para que o cliente mande a solicitação para Dalila analisar, mudar o tipo de anúncio e cobrar a diferença

<br/>

### Escolher forma de pagamento
- *DADO QUE* cliente queira pagar via PIX

- *QUANDO* clicar no botão para escolher a forma de pagamento

- *ENTÃO* site irá mostrar todas as opções e do lado do ícone do PIX a chave para fazer o depósito

#

## USER STORIE: CRUD CLIENTE

### Acessar lista de clientes com anúncios ativos
- *DADO QUE* Dalila queira acessar a lista todos os seus clientes que estjam anunciando um produto no momento

- *QUANDO* clicar no botão "Clientes ativos"

- *ENTÃO* o sistema mostrará uma lista com todos os clientes que estão anunciando algo juntamente com o prazo do anúncio

<br/>

### Adicionar segundo número de telefone do cliente
- *DADO QUE* Dalila quer adicionar um segundo número de telefone de um cliente que já um número anexado

- *QUANDO* clicar no botão "Telefone(s)"

- *ENTÃO* o sistema mostrará a opção de modificar o telefone cadastrado ou adicionar outro número de telefone

<br/>

### Anúncios de um cliente específico
- *DADO QUE* Dalila deseja consultar todos os anúncios que um cliente específico contratou desde que se cadastrou no site

- *QUANDO* clicar no botão "Anúncios", que está localizado abaixo do nome de cada cliente, do cliente que deseja consultar

- *ENTÃO* o sistema irá abrir uma aba com todos os anúncios que o cliente contratou, em ordem do mais recente ao mais antigo