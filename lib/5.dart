import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: age_cal_5(),
    ),
  );
}

class age_cal_5 extends StatefulWidget {
  const age_cal_5({super.key});

  @override
  State<age_cal_5> createState() => _age_cal_5State();
}

class _age_cal_5State extends State<age_cal_5> {
  List mycolor = [
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.red,
  ];
  List myicon = [
    Icons.search,
    Icons.business,
    Icons.navigate_before,
    Icons.navigate_next,
    Icons.alarm,
    Icons.album,
    Icons.add,
    Icons.add_a_photo,
  ];

  Color Mycolor = Colors.blue;
  IconData Myicon = Icons.navigate_before;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          "Icon Editor",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Icon(
                    Myicon,
                    color: Mycolor,
                    size: 150,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Select Color",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: mycolor
                          .map((e) => InkWell(
                        onTap: () {
                          setState(() {
                            Mycolor = e;
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: e,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ))
                          .toList(),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Select Icon",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myicon
                          .map((e) => InkWell(
                        onTap: () {
                          setState(() {
                            Myicon = e;
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(e),
                        ),
                      ))
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}
