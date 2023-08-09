import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: age_cal_4(),
  ));
}

class age_cal_4 extends StatefulWidget {
  const age_cal_4({super.key});

  @override
  State<age_cal_4> createState() => _age_cal_4State();
}

class _age_cal_4State extends State<age_cal_4> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("Dyanamic List"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade700,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: List.generate(
              i,
                  (index) => Container(
                height: 80,
                width: 380,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: (index % 2 == 0) ? Colors.blueAccent : Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.blueGrey.shade700,
            onPressed: () {
              setState(() {
                i++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.blueGrey.shade700,
            onPressed: () {
              setState(() {
                if (i > 0) {
                  i--;
                }
              });
            },
            child: const Icon(
              Icons.remove,
            ),
          ),
        ],
      ),
    );
  }
}
