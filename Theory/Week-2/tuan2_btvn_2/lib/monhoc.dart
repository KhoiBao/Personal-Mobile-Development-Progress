abstract class Monhoc{
  String _maMH = '';
  String _tenMH = '';
  int _soTC = 0;

  // Constructor 
  Monhoc(){
    _maMH = "MH000";
    _tenMH = "None";
    _soTC = 0;
  }

  // Full parameter
  Monhoc.fullPara(String maMH, String tenMH, int soTC){
    _maMH = maMH;
    _tenMH = tenMH;
    _soTC = soTC;
  }

  // getter for outside to call in
  String get maMH => _maMH;
  String get tenMH => _tenMH;
  int get soTC => _soTC;

  // logic tinh diem trung binh
  double tinhDTB();

  void showInfo(){
    print("Mã: $_maMH | Tên: $_tenMH | TC: $_soTC | DTB: ${tinhDTB().toStringAsFixed(1)}");
  }
}

// Ly thuyet
class Lythuyet extends Monhoc{
  double _diemTL = 0;
  double _diemCK = 0;

  Lythuyet.fullPara(
    String ma,
    String ten,
    int tinchi,
    this._diemTL,
    this._diemCK
  ):super.fullPara(ma, ten, tinchi);

  @override
  double tinhDTB() {
    return _diemTL * 0.3 + _diemCK * 0.7;
  }
}

// Thuc hanh
class Thuchanh extends Monhoc{
  double _kt1 = 0, _kt2 = 0 , _kt3 = 0;
  Thuchanh.fullPara(
    String ma,
    String ten,
    int tinchi,
    this._kt1,
    this._kt2,
    this._kt3
  ):super.fullPara(ma, ten, tinchi);

  @override
  double tinhDTB() {
    return (_kt1 + _kt2 + _kt3) / 3;
  }
}

// Do An
class DoAn extends Monhoc{
  double _diemGVHD = 0;
  double _diemGVPB = 0;

  DoAn.fullPara(
    String ma,
    String ten,
    int tinchi,
    this._diemGVHD,
    this._diemGVPB
  ):super.fullPara(ma, ten, tinchi);

  @override
  double tinhDTB() {
    return (_diemGVHD + _diemGVPB) / 2;
  }
}
