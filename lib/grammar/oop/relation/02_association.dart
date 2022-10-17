void main() {
  _Computer computer = _Computer('toly mac');
  _User user = _User(computer);
  user.pressStartButton();
}

class _User {
  _Computer _computer;

  _User(this._computer);

  _Computer get getComputer => _computer;

  set setComputer(_Computer c) => this._computer = c;

  void pressStartButton() {
    _computer.open();
  }
}

class _Computer {
  String name;

  _Computer(this.name);

  void open() {
    print('====电脑开机:[${name}]====="');
  }
}
