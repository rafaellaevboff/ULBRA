import { useState } from "react";
import './Formulario.css'

const Formulario = () =>{
    
    const [formData, setFormData] = useState({
        nome: '',
        telefone: '',
        tipo: '',
        pago: '',
        presenca: '',
        img: ''
    })

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData({
          ...formData,
          [name]: value,
        });
    };


    const mandarSubmit = () =>{
        // Recupere os dados anteriores do localStorage (se existirem)
        const savedData = localStorage.getItem('formData');
        let formDataArray = [];

        if (savedData) {
            formDataArray = JSON.parse(savedData);
        }

        // Adicione o objeto atual ao array
        formDataArray.push(formData);

        // Salve o array atualizado no localStorage
        localStorage.setItem('formData', JSON.stringify(formDataArray));
    }

    return(
        <div className="formulario">
            <form>
                <div className="elemento">
                    <label className="identificador">Nome</label><br/>
                    <input type="text" name="nome" value={formData.nome} onChange={handleChange}/><br/>
                </div>

                <div className="elemento">
                    <label className="identificador">Telefone</label><br/>
                    <input type="tel" name="telefone" value={formData.telefone} onChange={handleChange}/><br/>
                </div>

                <div className="elemento">
                    <label className="identificador">Egresso/Convidado</label><br/>

                    <input type="radio" name="tipo" value="sim" checked={formData.tipo === "sim"} onChange={handleChange}/>
                    <label htmlFor="sim">Sim</label>

                    <input type="radio" name="tipo" value="nao" checked={formData.tipo === "nao"} onChange={handleChange}/>
                    <label htmlFor="nao">Não</label><br/>
                </div>
                
                <div className="elemento">
                    <label className="identificador">Pago</label><br />
                
                    <input type="radio" name="pago" value="sim" checked={formData.pago === "sim"} onChange={handleChange}/>
                    <label htmlFor="sim">Sim</label>
                    
                    <input type="radio" name="pago" value="nao" checked={formData.pago === "nao"} onChange={handleChange}/>
                    <label htmlFor="nao">Não</label><br />
                </div>
                
                <div className="elemento">
                    <label className="identificador">Foto</label><br/>
                    <input type="text" name="img" value={formData.img} onChange={handleChange}/><br/>
                </div>
                
                <button onClick={mandarSubmit}>Cadastrar</button>
            </form>
        </div>
    )
}

export default Formulario;