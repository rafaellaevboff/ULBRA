import CardPresenca from '../../components/CardPresenca/CardPresenca';
import React, { useEffect, useState } from 'react';
import './Participantes.css';

const Participantes = () => {
  const [data, setData] = useState([]);

  const getLocalStorageData = () => {
    const localStorageData = JSON.parse(localStorage.getItem('formData'));

    if (localStorageData) {
      setData(localStorageData);
    }
  };

  useEffect(() => {
    getLocalStorageData();
  }, []);

  const cards = data.map((item, index) => (
    <CardPresenca nome={item.nome} tipo={item.tipo} pagamento={item.pago} imagem={item.img} key={index} />
  ));

  return (
    <div className='card-container'>
      {cards}
    </div>
  );
};

export default Participantes;
