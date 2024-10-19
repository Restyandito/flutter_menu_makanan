import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Makanan',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MakananList(),
    );
  }
}

class MakananList extends StatelessWidget {
  final List<Map<String, String>> makanan = [
    {
      'nama': 'Pizza Keju',
      'deskripsi': 'Pizza dengan topping keju mozarella.',
      'harga': 'Rp 50.000',
      'gambar': 'assets/images/pizza.jpg',
    },
    {
      'nama': 'Burger Bacon',
      'deskripsi': 'Burger dengan daging sapi dan bacon.',
      'harga': 'Rp 45.000',
      'gambar': 'assets/images/burger.jpg',
    },
    {
      'nama': 'Pasta Carbonara',
      'deskripsi': 'Pasta creamy dengan saus carbonara.',
      'harga': 'Rp 40.000',
      'gambar': 'assets/images/pasta.jpg',
    },
    {
      'nama': 'Salad Buah',
      'deskripsi': 'Salad dengan campuran buah segar.',
      'harga': 'Rp 25.000',
      'gambar': 'assets/images/salad.jpg',
    },
    {
      'nama': 'Steak Ayam',
      'deskripsi': 'Steak ayam dengan saus lada hitam.',
      'harga': 'Rp 55.000',
      'gambar': 'assets/images/steak.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu Makanan',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 3.0,
                color: Colors.black38,
                offset: Offset(2.0, 2.0),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue[400],
      ),
      body: Container(
        color: Colors.lightBlue[50],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 2.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10.0,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    'assets/images/featured_food.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: makanan.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1.0,
                        ),
                      ),
                      elevation: 4,
                      child: Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                makanan[index]['gambar']!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    makanan[index]['nama']!,
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    makanan[index]['deskripsi']!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    makanan[index]['harga']!,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
