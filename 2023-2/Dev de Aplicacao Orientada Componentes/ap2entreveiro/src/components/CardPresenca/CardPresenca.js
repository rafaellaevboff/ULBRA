import ImagensPerfil from "../ImagensPerfil";
import './CardPresenca.css';

const CardPresenca = ({nome, imagem, tipo, pagamento}) => {
    
    const tipoParticipante = tipo === 'sim' ? 'Egresso/Convidado' : 'Estudante'
    const presencaParticipante = pagamento === 'sim' ? 'Confirmado' : "Não confirmado"

    return(
    
        <div className="card swiper-slide">
            <div className="image-content">
                <span className="overlay"></span>
                <div className="card-image">
                <ImagensPerfil imagemUrl={imagem} tamanho={150}/>
                </div>
            </div>
            <div className="card-content">
                    <h2 className="name">{nome}</h2>
                <p className="description">{tipoParticipante}</p>
                <p className="description">{presencaParticipante}</p>
            </div>
        </div>
    );
}

export default CardPresenca;