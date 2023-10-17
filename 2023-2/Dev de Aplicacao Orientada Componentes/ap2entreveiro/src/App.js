import Header from './components/Header'
import './App.css';
import Localizacao from './components/Localizacao';
import Participantes from './Pages/Participantes';
import Formulario from './components/Formulario';

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
      <Localizacao/>
      <div style={container}>
        <div style={left}><Participantes/></div>
        <div style={right}><Formulario/></div>       
      </div>
      
    </div>
  );
}

export default App;
