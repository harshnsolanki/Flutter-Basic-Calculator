import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  TextEditingController field1 = TextEditingController(text: "0");
  TextEditingController field2 = TextEditingController(text: "0");

  void btnAdd() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      sum = num1 + num2;
    });
  }

  void btnSub() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      sum = num1 - num2;
    });
  }

  void btnDiv() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      sum = num1 ~/ num2;
    });
  }

  void btnMul() {
    setState(() {
      num1 = int.parse(field1.text);
      num2 = int.parse(field2.text);
      sum = num1 * num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Basic Calculator")),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output : $sum",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter First Value ",
              ),
              controller: field1,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: "Enter Second Value ",
              ),
              controller: field2,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: btnAdd,
                  color: Colors.lightGreen,
                  minWidth: 70,
                  child: const Text("+"),
                ),
                MaterialButton(
                  onPressed: btnSub,
                  color: Colors.lightGreen,
                  minWidth: 70,
                  child: const Text("-"),
                ),
                MaterialButton(
                  onPressed: btnMul,
                  color: Colors.lightGreen,
                  minWidth: 70,
                  child: const Text("*"),
                ),
                MaterialButton(
                  onPressed: btnDiv,
                  color: Colors.lightGreen,
                  minWidth: 70,
                  child: const Text("/"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
