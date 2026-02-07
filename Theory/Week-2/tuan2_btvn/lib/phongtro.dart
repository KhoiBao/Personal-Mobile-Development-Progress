abstract class phongtro {
  String _maSo = ''; // private
  int _soNguoi = 0;
  double _soDien = 0;
  double _soNuoc = 0;

  // Constructor to avoid Null
  phongtro(){
    _maSo = "P000";
    _soNguoi = 0;
  }
  // Getter so outside can call in
  String get maSo => _maSo;
  int get soNguoi => _soNguoi;
  double get soDien => _soDien;
  
  // phongtro full parameter
  phongtro.fullPara(String maSo, int soNguoi, double soDien, double soNuoc){
    _maSo = maSo;
    _soNguoi = soNguoi;
    _soDien = soDien;
    _soNuoc = soNuoc;
  }

  // Phuong thuc tinh tien phong
  double tinhTienPhong();

  // Show info phong
  void showInfo(){
    print("Mã: $_maSo, Số người: $_soNguoi, Điện: $_soDien, Nước: $_soNuoc, Tiền: ${tinhTienPhong()}");
  }
}

// Phong loai A
  class PhongA extends phongtro {
    int _soNguoiThan = 0;

    PhongA.fullPara(
      String ma, 
      int soN, 
      double soE, 
      double soW, 
      this._soNguoiThan)
      : super.fullPara(ma,soN,soE,soW);

    @override
    double tinhTienPhong(){
      return 1400 + 2 * _soDien + 8 * _soNuoc + 50 * _soNguoiThan;
    }
  }
  
// Phong loai B
  class PhongB extends phongtro {
    double _giatui = 0;
    int _somay = 0;

    PhongB.fullPara(
      String ma, 
      int soN, 
      double soE, 
      double soW, 
      this._giatui,
      this._somay)
      : super.fullPara(ma,soN,soE,soW);

    @override
    double tinhTienPhong(){
      return 2000 + 2 * _soDien + 8*_soNuoc + 5*_giatui + 100*_somay;
    }
  }