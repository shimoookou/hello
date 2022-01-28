import 'package:flutter/material.dart';
import 'package:helloo/outputs/output_a.dart';
import 'package:helloo/outputs/output_b.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "title",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _inputText="文字列";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("入力画面"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "好きな文字を入力してください",
                ),
                onChanged: (value){
                  setState(() {
                    _inputText = value;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.blue,
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                    Container(
                      color: Colors.amber,
                      width: 100.0,
                      height: 50.0,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:28.0,right:36.0),
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return OutputA(_inputText);
                        }));
                      },
                      child: Text("あお"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        onPrimary: Colors.white,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return OutputB(_inputText);
                      }));
                    },
                    child: Text("きいろ"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}


