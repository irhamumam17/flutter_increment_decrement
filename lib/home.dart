import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _number = 0;

  void incrementCounter() {
    setState(() {
      _number++;
    });
  }

  void decrementCounter() {
    setState(() {
      _number--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$_number",
              style: const TextStyle(fontSize: 24, color: Colors.blue),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Tekan tombol berikut untuk mengubah angka"),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: incrementCounter, child: const Text("Tambah")),
                const SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                    onPressed: decrementCounter, child: const Text("Kurangi"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
