abstract class Hoadon {
  String _maKH = '';
  String _tenKH ='';
  int _soluong = 0;
  double _giaban = 0;

  Hoadon(){
    _maKH = 'KH000';
    _tenKH = 'Nguyen Van A';
    _soluong = 0;
    _giaban = 0;
  }

  Hoadon.fullPara(String maKH, String tenKH, int sl, double giaban){
    _maKH = maKH;
    _tenKH = tenKH;
    _soluong = sl;
    _giaban = giaban;
  }

  //getter
  String get maKH => _maKH;
  String get tenKH => _tenKH;
  int get soluong => _soluong;
  double get giaban => _giaban;


}
