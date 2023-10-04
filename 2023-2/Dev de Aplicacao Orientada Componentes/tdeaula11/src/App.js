import Gallery from './components/Gallery'
import './App.css';

const profilesData = [
  {
    name: 'Nome1',
    image: 'https://i.imgur.com/szV5sdG.jpeg',
    profession: 'Profissão1',
    awards: 'Prêmios1',
    discoveries: 'Descobertas1',
  },
  {
    name: 'Nome2',
    image: 'https://i.imgur.com/YfeOqp2.jpeg',
    profession: 'Profissão2',
    awards: 'Prêmios2',
    discoveries: 'Descobertas2',
  },
];

function App() {
  return (
    <div className="App">
      <Gallery title="Galeria de Perfis" profiles={profilesData} />
    </div>
  );
}

export default App;
