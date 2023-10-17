import { useState } from "react";

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

    const mandarSubmit = (e) =>{
        const data = `export const userData = ${JSON.stringify(formData)}`
        const blob = new Blob([data], {type: 'text/javascript'});
        const url = window.URL.createObjectURL(blob);
        const a = document.createElement('a');
        a.href = url;
        a.download = 'data.js';
        a.click()
        window.URL.revokeObjectURL(url);
    }

    const fundo = {
        backgroundColor: '#D9D9D9',
    }

    return(
        <div style={fundo} className="formulario">
            <form>
                <div>
                    <label>Nome</label><br/>
                    <input type="text" name="nome" value={formData.nome} onChange={handleChange}/><br/>
                </div>

                <div>
                    <label>Telefone</label><br/>
                    <input type="tel" name="telefone" value={formData.telefone} onChange={handleChange}/><br/>
                </div>

                <div>
                    <label>Egresso/Convidado</label><br/>
                    <input type="radio" name="tipo" value="sim" checked={formData.tipo === "sim"} onChange={handleChange}/>
                    <label htmlFor="sim">Sim</label>
                    <input type="radio" name="tipo" value="nao" checked={formData.tipo === "nao"} onChange={handleChange}/>
                    <label htmlFor="nao">Não</label><br/>
                </div>
                
                <div>
                    <label>Pago</label><br />
                    <input type="radio" name="pago" value="sim" checked={formData.pago === "sim"} onChange={handleChange}/>

                    <label htmlFor="sim">Sim</label>
                    <input type="radio" name="pago" value="nao" checked={formData.pago === "nao"} onChange={handleChange}/>
                    <label htmlFor="nao">Não</label><br />
                </div>

                
                <div>
                    <label>Foto</label><br/>
                    <input type="text" name="img" value={formData.img} onChange={handleChange}/><br/>
                </div>
                
                <button onClick={mandarSubmit}>Cadastrar</button>
            </form>
        </div>
    )
}

export default Formulario;