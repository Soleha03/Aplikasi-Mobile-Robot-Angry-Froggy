import 'package:flutter/material.dart';

class LineFollower extends StatefulWidget {
  const LineFollower({super.key});

  @override
  State<LineFollower> createState() => _LineFollowerState();
}

class _LineFollowerState extends State<LineFollower> {
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
            title: Text(
              "LINE",
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "SENSOR",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 90,
                      height: 15,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
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
                  borderRadius: BorderRadius.circular(20),
                ),
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
                        print('feature : START ok');
                      },
                      color: Color(0xFF82A0D8),
                      child: Text(
                        'START',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    MaterialButton(
                      height: 100,
                      minWidth: 100,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)),
                      onPressed: () {
                        print('feature : STOP ok');
                      },
                      color: Color(0xFF82A0D8),
                      elevation: 20,
                      child: Text(
                        'STOP',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 23,
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
