void main() {
  // Animal().write();
  Fish().write();

}

class Animal with Writer{
  int k = 11;
  void wreite(){
    print('AnimalWrite + $k');
  }

}

class Fish extends Animal with Writer,Reader,Reader2{
  // int k = 22;
  void wriete(){
    print('FishWrite + $k');
  }
}

mixin Writer{
  int k = 33;
  void write() {
    print('MixinWrite + $k');
  }
}mixin Reader{
  int k = 44;
  void wri3te() {
    print('MixinRead + $k');
  }
}mixin Reader2{
  // int k = 55;
  void wr3ite() {
    print('MixinRead2 + ');
  }
}
