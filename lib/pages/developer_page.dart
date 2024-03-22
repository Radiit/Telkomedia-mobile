import 'package:flutter/material.dart';

class Developer extends StatelessWidget {
  const Developer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Developer')),
      body: Center(
        child: Column(
          children: [
            Text('Nama: Muhammad Fikri'),
            Text('NIM: 20180801368'),
            Text('Jurusan: Teknik Informatika'),
            Text('Fakultas: Teknik'),
            Text('Universitas: Universitas Islam Indonesia'),
          ],
        ),
      ),
    );
  }
}
