import CardPresenca from '../../components/CardPresenca/CardPresenca';
import { data } from '../../data'
import './Participantes.css'

const Participantes = () =>{

    const cards = data.map((item, index) =>(
        <CardPresenca nome={item.nome} tipo={item.tipo} pagamento={item.pago} imagem={item.img} key={index}/>
    ))

    return(
        <div>
            {cards}
        </div>
    )
}

export default Participantes;