import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/shoes.dart';

class DetailScreen extends StatelessWidget {
  final shoes shoess;

  const DetailScreen({Key? key, required this.shoess}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shoess.name),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.blue, // Warna background lingkaran
              radius: 80, // Ukuran lingkaran
              child: ClipOval(
                // Menggunakan ClipOval untuk membuat gambar berbentuk lingkaran
                child: Image.asset(
                  'assets/fred.jpeg', // Ganti dengan path/logo sesuai lokasi dan nama file logo Anda
                  width: 50, // Ukuran gambar di dalam lingkaran
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                shoess.image,
                width: 400,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            shoess.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: Colors.blueAccent),
          ),
          Text(' ${shoess.htm}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Description : ' + shoess.spek,
              maxLines: 15,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.brown,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
