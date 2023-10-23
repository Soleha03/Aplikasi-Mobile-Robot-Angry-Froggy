import 'package:flutter/material.dart';

class FreeControl extends StatefulWidget {
  const FreeControl({super.key});

  @override
  State<FreeControl> createState() => _FreeControlState();
}

class _FreeControlState extends State<FreeControl> {
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
              "REMOTE",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: MaterialButton(
                      onPressed: () {
                        print('feature : UP ok');
                      },
                      minWidth: 170,
                      height: 115,
                      elevation: 20,
                      color: Color(0xFF82A0D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ImageIcon(
                        AssetImage("images/up.png"),
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    child: MaterialButton(
                      onPressed: () {
                        print('feature : DOWN ok');
                      },
                      minWidth: 170,
                      height: 115,
                      elevation: 20,
                      color: Color(0xFF82A0D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ImageIcon(
                        AssetImage("images/down.png"),
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    print('feature : AROUND ok');
                  },
                  minWidth: 170,
                  height: 170,
                  elevation: 20,
                  color: Color(0xFF82A0D8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ImageIcon(
                    AssetImage("images/around.png"),
                    size: 40,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: MaterialButton(
                      onPressed: () {
                        print('feature : LEFT ok');
                      },
                      minWidth: 115,
                      height: 230,
                      elevation: 20,
                      color: Color(0xFF82A0D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ImageIcon(
                        AssetImage("images/left.png"),
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: MaterialButton(
                      onPressed: () {
                        print('feature : RIGHT ok');
                      },
                      minWidth: 115,
                      height: 230,
                      elevation: 20,
                      color: Color(0xFF82A0D8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: ImageIcon(
                        AssetImage("images/right.png"),
                        size: 40,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
