import 'package:flutter/material.dart';

class Cau1 extends StatelessWidget {
  const Cau1({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Thông tin sinh viên",
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

              Center(
                child: Image.asset(
                  "assets/images/miku.jpg",
                  width: 200,
                  height: 200,
                  fit: BoxFit.scaleDown,
                ),
              ),

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
                  "MSSV: 2001230417",
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
                  "Lớp: 14DHTH13",
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
                  "Khóa: 14 Đại học",
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
                  "Ngành: Công nghệ thông tin",
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
                  "Sở thích: Code, Đồ ngọt, Ngoại Ngữ, Anime, Gym",
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
