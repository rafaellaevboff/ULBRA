import ImagensPerfil from "./ImagensPerfil";

const CardPresenca = ({nome, imagem, tipo, pagamento}) => {
    const estiloCard = {
        backgroundColor:'#6B6B6B',
        width:'200px',
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        justifyContent: 'center',
        margin:'20px',
        boxShadow:'0 0 10px rgba(0, 0, 0, 0.5)',
        color:'white'
    }

    const tipoParticipante = tipo === 'true' ? 'Egresso/Convidado' : 'Estudante'
    const presencaParticipante = pagamento === 'true' ? 'Confirmado' : "Não confirmado"

    return(
        <div className="cardPresenca" style={estiloCard}>
            <ImagensPerfil imagemUrl={imagem} tamanho={150}/>
            <p>{nome}</p>
            <p>{tipoParticipante}</p>
            <p>{presencaParticipante}</p>
        </div>
    );
}

export default CardPresenca;