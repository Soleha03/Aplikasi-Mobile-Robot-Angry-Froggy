import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:froggie_furry/free_control.dart';
import 'package:froggie_furry/line_follower.dart';
import 'package:froggie_furry/obstacle.dart';
import 'package:froggie_furry/sound.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 60,
            ),
            Center(
                child: MaterialButton(
              height: 70,
              minWidth: 70,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Wifi()));
              },
              color: Color(0xFF8DDFCB),
              child: ImageIcon(
                AssetImage("images/wifi.png"),
                color: Colors.black,
                size: 35,
              ),
            )),
            Container(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LineFollower()));
                  },
                  elevation: 10,
                  minWidth: 100,
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF82A0D8),
                  child: Column(
                    children: [
                      const ImageIcon(
                        AssetImage("images/linefollowing.png"),
                        size: 30,
                        color: Colors.white,
                      ),
                      Container(
                        height: 15,
                      ),
                      const Text(
                        "LINE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Obstacle()));
                  },
                  elevation: 10,
                  minWidth: 100,
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF82A0D8),
                  child: Column(
                    children: [
                      const ImageIcon(
                        AssetImage("images/obstacle.png"),
                        size: 30,
                        color: Colors.white,
                      ),
                      Container(
                        height: 15,
                      ),
                      const Text(
                        "OBSTACLE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FreeControl()));
                  },
                  elevation: 10,
                  minWidth: 100,
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF82A0D8),
                  child: Column(
                    children: [
                      const ImageIcon(
                        AssetImage("images/remote.png"),
                        size: 30,
                        color: Colors.white,
                      ),
                      Container(
                        height: 15,
                      ),
                      const Text(
                        "REMOTE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sound()));
                  },
                  elevation: 10,
                  minWidth: 100,
                  height: 100,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF82A0D8),
                  child: Column(
                    children: [
                      const ImageIcon(
                        AssetImage("images/sound.png"),
                        size: 30,
                        color: Colors.white,
                      ),
                      Container(
                        height: 15,
                      ),
                      const Text(
                        "SOUND",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Wifi extends StatefulWidget {
  const Wifi({super.key});

  @override
  State<Wifi> createState() => _WifiState();
}

class _WifiState extends State<Wifi> {
  final _valueIP = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              // Kembali ke halaman sebelumnya
              Navigator.pop(context);
            },
          ),
          backgroundColor: Color(0xFFDAE7FF),
          centerTitle: true,
          title: const Text(
            "WIFI",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
        body: Center(
          child: ListView(children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: 300,
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      label: Text("Enter your IP address"),
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: 'example : 192.168.100.1',
                    ),
                    controller: _valueIP,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]'))
                    ],
                  ),
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Color(0xFF8DDFCB),
                  onPressed: () {
                    print(_valueIP.text);
                  },
                  child: Text(
                    "Connect",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
