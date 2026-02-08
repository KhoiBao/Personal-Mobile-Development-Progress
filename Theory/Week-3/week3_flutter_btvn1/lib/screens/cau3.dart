import 'package:flutter/material.dart';

class Cau3 extends StatelessWidget {
  const Cau3({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),

      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Thông tin sản phẩm",
            style: TextStyle(
              color: Color.fromARGB(255, 201, 214, 102),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          
          backgroundColor: Colors.blue[900],
          leading: IconButton(icon: const Icon(Icons.home), onPressed: () {}), actions: [IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {} ,)
        ]),

        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "San Pham Noi Bat",
                  style: TextStyle(
                    color: Color.fromARGB(255, 219, 27, 27),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    ),
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image.asset(
                      "assets/images/product1.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),

                    const SizedBox(width: 10),
                    Image.asset(
                      "assets/images/product2.jpg",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),

                    Image.asset(
                      "assets/images/product3.png",
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],// children
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
