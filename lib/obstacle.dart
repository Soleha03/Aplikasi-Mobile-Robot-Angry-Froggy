import 'package:flutter/material.dart';

class Obstacle extends StatefulWidget {
  const Obstacle({super.key});

  @override
  State<Obstacle> createState() => _ObstacleState();
}

class _ObstacleState extends State<Obstacle> {
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
              "OBSTACLE",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DISTANCE",
                      style: TextStyle(fontSize: 15),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 0.7,
                              color: Colors.black,
                            )),
                        child: Center(
                          child: Text(
                            "30 cm",
                            style: TextStyle(fontSize: 10),
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                height: 20,
              ),
              Container(
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
                        print('feature : FOLLOW ok');
                      },
                      color: Color(0xFF82A0D8),
                      child: Text(
                        'FOLLOW',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    MaterialButton(
                      height: 100,
                      minWidth: 100,
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      onPressed: () {
                        print('feature : AVOID ok');
                      },
                      color: Color(0xFF82A0D8),
                      child: Text(
                        'AVOID',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
