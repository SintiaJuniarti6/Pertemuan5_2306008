import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  //iinisialisasi data yg diikirim
  final String name;
  final String imageUrl;
  final int price;

  //konstraktor untuk menerima data
  HomePage({
    required this.name,
    required this.price,
    required this.imageUrl,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            width: 200,
            height: 200,
            fit: BoxFit.cover,

          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            price.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.green,
            ),
          ),
          ElevatedButton(
            child: Text("Lihat Detail"),
            onPressed: () {
              //untuk berpindah ke halaman kedua
              Navigator.pushNamed(context, '/second');
            },
          ),
        ]
      )
    );
  }
}