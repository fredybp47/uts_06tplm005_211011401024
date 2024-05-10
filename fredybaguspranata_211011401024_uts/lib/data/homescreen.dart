import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/data_shoes.dart';
import 'package:flutter_application_2/data/shoes.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50), // Set tinggi AppBar
        child: AppBar(
          title: Text(
            'Shoes', // Judul AppBar
            style: TextStyle(
              fontSize: 50, // Ukuran teks judul
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue, // Warna background lingkaran
                radius: 100, // Ukuran lingkaran
                child: ClipOval(
                  // Menggunakan ClipOval untuk membuat gambar berbentuk lingkaran
                  child: Image.asset(
                    'assets/fred.jpeg', // Ganti dengan path/nama file gambar Anda
                    width: 40, // Ukuran gambar di dalam lingkaran
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: dataShoes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              shoess: dataShoes[index],
                            )));
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          dataShoes[index].image,
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(dataShoes[index].name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.blueAccent)),
                        Text(' ${dataShoes[index].htm}'),
                        ClipOval(
                          child: Material(
                            color: Colors.blue, // button color
                            child: InkWell(
                              splashColor: Colors.red, // inkwell color
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Icon(Icons.favorite)),
                              onTap: () {},
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
