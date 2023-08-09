import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: age_cal_2(),
  ));
}

class age_cal_2 extends StatefulWidget {
  const age_cal_2({super.key});

  @override
  State<age_cal_2> createState() => _age_cal_2State();
}

class _age_cal_2State extends State<age_cal_2> {
  List myIcon = [
    {
      'name1': 'Exit',
      'icon1': Icons.exit_to_app,
      'name2': 'Play',
      'icon2': Icons.play_arrow,
      'name3': 'Pause',
      'icon3': Icons.pause,
      'name4': 'Stop',
      'icon4': Icons.stop,
      'name5': 'Close',
      'icon5': Icons.close,
      'name6': 'Delete',
      'icon6': Icons.delete,
      'name7': 'Email',
      'icon7': Icons.email,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Map"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: myIcon
                .map((e) => Column(
                      children: [
                        for (int i = 0; i < 7; i++)
                          Container(
                            height: 90,
                            width: 380,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(e['name${i+1}']),
                                  Icon(e['icon${i + 1}']),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}