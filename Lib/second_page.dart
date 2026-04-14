import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        backgroundColor: Colors.cyan,
      ),
      body:Column(
        children: [
          Image.network("https://picsum.photos/200/300", width: 200, height: 300, fit: BoxFit.cover),
          Text("Barang", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text("5000", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text("Deskripsi Produk A", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}