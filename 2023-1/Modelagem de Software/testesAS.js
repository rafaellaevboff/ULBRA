// MEMENTO
class ImageMemento {
  constructor(imageData) {
    this.imageData = imageData;
  }
}

// ORIGINATOR
class Image {
  constructor() {
    this.imageData = null;
  }

  loadImage(imageData) {
    this.imageData = imageData;
  }

  applyFilter(filter) {
    // Aplica o filtro na imagem
    console.log("Aplicando filtro:", filter);
  }

  save() {
    return new ImageMemento(this.imageData);
  }

  restore(memento) {
    this.imageData = memento.imageData;
  }
}

// CARETAKER
class Caretaker {
  constructor() {
    this.mementos = [];
  }

  addMemento(memento) {
    this.mementos.push(memento);
  }

  getMemento(index) {
    return this.mementos[index];
  }
}

// Uso do padrão Memento na edição de imagens
const image = new Image();
const caretaker = new Caretaker();

// Carrega a imagem original
const originalImageData = "Dados da imagem original";
image.loadImage(originalImageData);

// Aplica um filtro à imagem
const filter1 = "Filtro 1";
image.applyFilter(filter1);

caretaker.addMemento(image.save()); // Salva o estado após o primeiro filtro

// Aplica outro filtro à imagem
const filter2 = "Filtro 2";
image.applyFilter(filter2);

caretaker.addMemento(image.save()); // Salva o estado após o segundo filtro

// Restaura o estado anterior (após o primeiro filtro)
image.restore(caretaker.getMemento(0));

// Aplica um novo filtro à imagem restaurada
const filter3 = "Filtro 3";
image.applyFilter(filter3);

// Imprime o estado atual da imagem
console.log("Estado atual da imagem:", image.imageData);