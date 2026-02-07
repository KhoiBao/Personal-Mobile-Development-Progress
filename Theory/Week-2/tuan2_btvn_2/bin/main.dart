import 'dart:io';
import 'package:tuan2_btvn_2/monhoc.dart';

// --- Hàm kiểm tra danh sách có sắp xếp theo tên không ---
bool isSortedByName(List<Monhoc> ds) {
  for (int i = 0; i < ds.length - 1; i++) {
    if (ds[i].tenMH.compareTo(ds[i + 1].tenMH) > 0) return false;
  }
  return true;
}

void main() async {
  List<Monhoc> dsMH = [];

  // 1. Nhập danh sách từ bàn phím (Ví dụ nhập 1 môn mẫu)
  print("Nhập số lượng môn muốn thêm:");
  int n = int.parse(stdin.readLineSync()!);
  for(int i=0; i<n; i++) {
    print("Nhập tên môn thứ ${i+1}:");
    String ten = stdin.readLineSync()!;
    dsMH.add(Lythuyet.fullPara("AUTO", ten, 3, 0, 0)); // Mặc định là môn LT
  }

  // 2. Xuất danh sách
  print("\n--- Danh sách môn học ---");
  for (var m in dsMH) m.showInfo();

  // 3. Kiểm tra sắp xếp theo tên
  print("\nDanh sách có sắp xếp tăng dần theo tên? ${isSortedByName(dsMH) ? "CÓ" : "KHÔNG"}");

  // 4. Sắp xếp tăng dần theo số tín chỉ
  dsMH.sort((a, b) => a.soTC.compareTo(b.soTC));
  print("\n--- Danh sách sau khi xếp theo tín chỉ ---");
  for (var m in dsMH) m.showInfo();

  // 5. Tìm môn có số tín chỉ cao nhất
  if (dsMH.isNotEmpty) {
    int maxTC = dsMH.map((m) => m.soTC).reduce((a, b) => a > b ? a : b);
    print("\nCác môn có tín chỉ cao nhất ($maxTC):");
    dsMH.where((m) => m.soTC == maxTC).forEach((m) => m.showInfo());
  }

  // 6. Tìm theo tên và xử lý (Thêm nếu không có)
  print("\nNhập tên môn cần tìm:");
  String searchName = stdin.readLineSync()!;
  try {
    var found = dsMH.firstWhere((m) => m.tenMH.toLowerCase() == searchName.toLowerCase());
    print("Tìm thấy môn học:");
    found.showInfo();
  } catch (e) {
    print("Không tìm thấy. Đang thêm vào cuối danh sách...");
    dsMH.add(Lythuyet.fullPara("NEW", searchName, 2, 0, 0));
  }
  // 8. Tính số tín chỉ trung bình
  double avgTC = dsMH.isEmpty ? 0 : dsMH.fold(0, (sum, m) => sum + m.soTC) / dsMH.length;
  print("\nSố tín chỉ trung bình của danh sách: ${avgTC.toStringAsFixed(2)}");
}