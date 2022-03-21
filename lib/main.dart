import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  sub() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }

  mul() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  div() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = (num1! ~/ num2!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Result : $result",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller1,
              decoration: InputDecoration(
                  labelText: "Enter First Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: controller2,
              decoration: InputDecoration(
                  labelText: "Enter Second Number",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    //Addition
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40)),
                    onPressed: (() {
                      add();
                      controller1.clear();
                      controller2.clear();
                    }),
                    child: Text("Add")),
                ElevatedButton(
                    //Subtraction
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40)),
                    onPressed: (() {
                      sub();
                      controller1.clear();
                      controller2.clear();
                    }),
                    child: Text("Sub")),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    //Multiply
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40)),
                    onPressed: (() {
                      mul();
                      controller1.clear();
                      controller2.clear();
                    }),
                    child: Text("Mul")),
                ElevatedButton(
                    //Division
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(120, 40),
                        maximumSize: const Size(120, 40)),
                    onPressed: (() {
                      div();
                      controller1.clear();
                      controller2.clear();
                    }),
                    child: Text("Div")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
