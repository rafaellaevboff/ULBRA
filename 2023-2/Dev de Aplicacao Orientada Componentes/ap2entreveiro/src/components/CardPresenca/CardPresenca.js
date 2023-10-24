import ImagensPerfil from "../ImagensPerfil";
import './CardPresenca.css';

const CardPresenca = (props) => {
    
    const tipoParticipante = props.tipo === 'sim' ? 'Egresso/Convidado' : 'Estudante'
    const presencaParticipante = props.pagamento === 'sim' ? 'Confirmado' : "Não confirmado"

    return(
    
        <div className="card swiper-slide">
            <div className="image-content">
                <span className="overlay"></span>
                <div className="card-image">
                <ImagensPerfil imagemUrl={props.imagem} tamanho={150}/>
                </div>
            </div>
            <div className="card-content">
                    <h2 className="name">{props.nome}</h2>
                <p className="description">{tipoParticipante}</p>
                <p className="description">{presencaParticipante}</p>
            </div>
        </div>
    );
}

export default CardPresenca;