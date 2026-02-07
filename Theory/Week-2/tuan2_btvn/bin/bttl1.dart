import 'dart:io';
import 'package:tuan2_btvn/phongtro.dart';

Future<List<phongtro>> readFile(String fileName) async {
  List<phongtro> ds = [];
  try {
    List<String> lines = await File(fileName).readAsLines(); 

    for (String line in lines) {
      List<String> parts = line.split('#'); 
      String ma = parts[0];
      
      if (ma.startsWith('A')) {
        ds.add(PhongA.fullPara(ma, int.parse(parts[1]), double.parse(parts[2]), 
               double.parse(parts[3]), int.parse(parts[4])));
      } else if (ma.startsWith('B')) {
        ds.add(PhongB.fullPara(ma, int.parse(parts[1]), double.parse(parts[2]), 
               double.parse(parts[3]), double.parse(parts[4]), int.parse(parts[5])));
      }
    }
  } catch (e) {
    print('Lỗi đọc file: $e');
  }
  return ds;
}

void main() async {
  List<phongtro> dsPhong = await readFile('lib/phongthue.txt');

  print("--- 1. Danh sách phòng thuê ---"); 
  for (var p in dsPhong) p.showInfo();

  print("\n--- 2. Các phòng có trên 2 người ---");
  dsPhong.where((p) => p.soNguoi > 2).forEach((p) => p.showInfo());

  double tong = dsPhong.fold(0, (sum, p) => sum + p.tinhTienPhong());
  print("\n--- 3. Tổng tiền phòng thu được: $tong ---");

  print("\n--- 4. Sắp xếp giảm dần theo số điện tiêu thụ ---");
  dsPhong.sort((a, b) => b.soDien.compareTo(a.soDien));
  for (var p in dsPhong) p.showInfo();

  print("\n--- 5. Danh sách các phòng loại A ---"); 
  dsPhong.where((p) => p is PhongA).forEach((p) => p.showInfo());
}