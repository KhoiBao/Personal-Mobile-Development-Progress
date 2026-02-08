import 'package:flutter/material.dart';

class Cau4 extends StatelessWidget {
  const Cau4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),

      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "THÔNG TIN NHÓM SINH VIÊN",
            style: TextStyle(
              color: Color.fromARGB(255, 201, 214, 102),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue[900],
          leading: IconButton(icon: const Icon(Icons.group), onPressed: () {}),
          actions: [
            IconButton(
              icon: const Icon(Icons.school),
              onPressed: () {},
            ),
          ],
        ),

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(height: 20),
                const Text(
                  "NHÓM 5 ANH EM LẬP TRÌNH DI ĐỘNG",
                  style: TextStyle(
                    color: Color.fromARGB(255, 219, 27, 27),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Hàng đầu: 3 thành viên
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/member1.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Nguyễn Bảo Khôi",
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 63, 244),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/member2.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Trần Thị Anh Thư",
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 63, 244),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/member3.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Vũ Thiên Trường",
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 63, 244),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/member4.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Tứn Trần",
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 63, 244),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/member5.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Tứn Trần",
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 63, 244),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/member5.jpg",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Đỗ Gia Bảo",
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 63, 244),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Lớp học phần: Lập trình di động - Khóa 14",
                    style: TextStyle(
                      color: Color.fromARGB(255, 70, 20, 206),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Giảng viên hướng dẫn: Đỗ Gia Bảo",
                    style: TextStyle(
                      color: Color.fromARGB(255, 221, 31, 31),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
