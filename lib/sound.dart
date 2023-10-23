import 'package:flutter/material.dart';

class Sound extends StatefulWidget {
  const Sound({super.key});

  @override
  State<Sound> createState() => _SoundState();
}

class _SoundState extends State<Sound> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFDAE7FF),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                // Kembali ke halaman sebelumnya
                Navigator.pop(context);
              },
            ),
            title: const Text(
              "SOUND",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
          ),
          body: Center(
              child: Container(
            width: 300,
            height: 135,
            decoration: BoxDecoration(
                color: Color(0xFFEDB7ED),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  height: 100,
                  minWidth: 100,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  onPressed: () {
                    print('feature : ON ok');
                  },
                  color: Color(0xFF82A0D8),
                  child: Text(
                    'ON',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                MaterialButton(
                  height: 100,
                  minWidth: 100,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  onPressed: () {
                    print('feature : OFF ok');
                  },
                  color: Color(0xFF82A0D8),
                  child: Text(
                    'OFF',
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
