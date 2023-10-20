import React, {useEffect, useState} from 'react';

const Localizacao = ({cep}) => {

  const [enable, setEnable] = useState(false)
  const [endereco, setEndereco] = useState(null);

  function handleClickEnableDetails(){
    setEnable(!enable)
  }

  useEffect (() => {
      fetch(`https://viacep.com.br/ws/${cep}/json/`)
    .then((response) => response.json())
    .then((data) => {
      if (data.cep) {
        setEndereco(data);
      } else {
        setEndereco(null);
      }
    })
    .catch((error) => {
      console.error('Ocorreu um erro ao buscar o endereço:', error);
    });
  });

  return(
      <div className="localizacao">
          
          <button onClick={handleClickEnableDetails}>Localização</button>

          {enable && 
              <div className="container">
                  <div className="left">
                      <p>CEP: {endereco.cep}</p>
                      <p>BAIRRO: {endereco.bairro}</p>
                      <p>HORÁRIO: 19:00</p>
                  </div>
                  <div className="right">
                      <p>CIDADE: {endereco.localidade}</p>
                      <p>AV/RUA: {endereco.logradouro}</p>
                  </div>
              </div>
          }
          
      </div>
  );
}

export default Localizacao;