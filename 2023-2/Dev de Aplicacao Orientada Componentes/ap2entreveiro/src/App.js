import Header from './components/Header/Header'
import './App.css';
import Localizacao from './components/Localizacao/Localizacao';
import Participantes from './Pages/Participantes/Participantes';
import Formulario from './components/Formulario/Formulario';

function App() {

  const container = {
    display: 'flex',
    justifyContent: 'space-between',
  }

  const left = {
      flex: '2',
      padding: '5px',
  }

  const right = {
      flex: '1',
      padding:'5px',
  }

  return (
    <div className="App">
      <Header nomeEvento={'Entreveiro'} usuario={'Rafaella'} />
      <Localizacao cep={'88801-003'}/>
      <div style={container}>
        <div style={left}><Participantes/></div>
        <div style={right}><Formulario/></div>       
      </div>
      
    </div>
  );
}

export default App;
