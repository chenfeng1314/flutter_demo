void main() {
  _GraphicsCard graphicsCard = _GraphicsCard('NVIDIA GeForce RTX 3060');
  _Memory memory = _Memory("DDR5", 32);
  _Computer computer = _Computer('toly mac', graphicsCard, memory);
  computer.printConfig();
}

class _Computer {
  String name;
  _GraphicsCard graphicsCard;
  _Memory memory;

  _Computer(this.name, this.graphicsCard, this.memory);

  void printConfig() {
    print("====电脑名称:[${name}]=====");
    print("====电脑显卡:[${graphicsCard.name}]=====");
    print("====电脑内存:[${memory.type}:${memory.size}GB]=====");
  }
}

class _GraphicsCard {
  String name;

  _GraphicsCard(this.name);
}

class _Memory {
  double size;
  String type;

  _Memory(this.type, this.size);
}
