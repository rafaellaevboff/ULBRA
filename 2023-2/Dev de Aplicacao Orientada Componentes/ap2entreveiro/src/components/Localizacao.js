import React, {useEffect, useState} from 'react';

const Localizacao = () => {

  const estiloBotao = {
    width: '200px',
    height: '50px',
  };

  const container = {
    display: 'flex',
    justifyContent: 'space-between',
  }

  const left = {
      flex: '1',
      padding: '5px',
  }

  const right = {
      flex: '1',
      padding:'5px',
  }


  const [enable, setEnable] = useState(false)
  const [endereco, setEndereco] = useState(null);

  function handleClickEnableDetails(){
    setEnable(!enable)
  }

  useEffect (() => {
      fetch(`https://viacep.com.br/ws/95560000/json/`)
    .then((response) => response.json())
    .then((data) => {
      // Verifique se a resposta possui a propriedade "cep" (indicando um resultado válido)
      if (data.cep) {
        setEndereco(data);
      } else {
        // CEP não encontrado
        setEndereco(null);
      }
    })
    .catch((error) => {
      console.error('Ocorreu um erro ao buscar o endereço:', error);
    });
  }, []);

  return(
      <div className="localizacao">
          
          <button onClick={handleClickEnableDetails} style={estiloBotao}>Localização</button>

          {enable && 
              <div style={container}>
                  <div style={left}>
                      <p>CEP: {endereco.cep}</p>
                      <p>BAIRRO: {endereco.bairro}</p>
                      <p>HORÁRIO: 19:00</p>
                  </div>
                  <div style={right}>
                      <p>CIDADE: {endereco.localidade}</p>
                      <p>AV/RUA: {endereco.logradouro}</p>
                  </div>
              </div>
          }
          
      </div>
  );
}

export default Localizacao;