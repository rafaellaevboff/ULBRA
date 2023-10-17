import React from 'react';

function ImagensPerfil({imagemUrl, tamanho}) {

  const estiloDiv = {
    width: tamanho,
    height: tamanho,
    backgroundImage: `url(${imagemUrl})`, 
    backgroundSize: 'cover',
    borderRadius: '50%',
    backgroundPosition: 'center'
  };

  return <div style={estiloDiv}></div>;
}

export default ImagensPerfil;
