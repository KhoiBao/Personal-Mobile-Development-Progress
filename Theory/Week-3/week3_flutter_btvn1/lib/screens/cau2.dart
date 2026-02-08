import 'package:flutter/material.dart';

class Cau2 extends StatelessWidget {
  const Cau2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Thông tin đồ án khóa luận",
            style: TextStyle(
              color: Color.fromARGB(255, 201, 214, 102),
              fontSize: 18,
            ),
          ),
          backgroundColor: Colors.blue[900],
          leading: IconButton(icon: const Icon(Icons.home), onPressed: () {}), actions: [IconButton(icon: const Icon(Icons.access_alarm), onPressed: () {} ,)
        ]),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Họ Tên Sinh Viên: Nguyễn Bảo Khôi",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 63, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Mã đề tài: 0 0 biết",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 63, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Tên nhóm: 5 chang linh ngu lam",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 63, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Tên đề tài: Ứng dụng mobile xem phim (dự kiến)",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 63, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Số lượng: 5 member",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 63, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Chuyên Ngành: Công nghệ thông tin",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 63, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Trường: Đại học Công Thương TPHCM",
                  style: TextStyle(
                    color: Color.fromARGB(255, 54, 63, 244),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Giảng viên hướng dẫn: thầy Đỗ Gia Bảo Deptrai",
                  style: TextStyle(
                    color: Color.fromARGB(255, 76, 77, 99),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Yêu cầu đề tài: làm ra sản phẩm chạy được và kết nối database",
                  style: TextStyle(
                    color: Color.fromARGB(255, 76, 77, 99),
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
