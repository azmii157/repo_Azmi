import 'package:flutter/material.dart';

class NumberTenScreen extends StatelessWidget {
  const NumberTenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FlutterLogo(
            size: 40,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Text Judul'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150, // Sesuaikan lebar
                height: 150, // Sesuaikan tinggi
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100), // Bulat
                  border: Border.all(
                    color: Colors.blue,
                    width: 5, // Sesuaikan ketebalan border
                  ),
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.fGRkwMVPm62E7AOuZ9FuswHaE8?w=226&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2, // Sesuaikan ketebalan garis bawah
                  ),
                ),
              ),
              child: const Text(
                'Hello World',
                style: TextStyle(
                  fontSize: 20, // Sesuaikan ukuran font
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  height: 1.2, // Sesuaikan jarak antar baris
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
