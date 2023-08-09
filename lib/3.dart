import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: age_cal_3(),
  ));
}

class age_cal_3 extends StatefulWidget {
  const age_cal_3({super.key});

  @override
  State<age_cal_3> createState() => _age_cal_3State();
}

class _age_cal_3State extends State<age_cal_3> {
  List icons1 = [
    Icon(
      Icons.add,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.album_sharp,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.chevron_left_outlined,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.chevron_right_outlined,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.alarm,
      size: 40,
      color: Colors.grey.shade600,
    ),
  ];
  List icons2 = [
    Icon(
      Icons.verified_user_sharp,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.account_circle_outlined,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.sync,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.shuffle_rounded,
      size: 40,
      color: Colors.grey.shade600,
    ),
  ];
  List icons3 = [
    Icon(
      Icons.more_rounded,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.more_vert_rounded,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.height,
      size: 40,
      color: Colors.grey.shade600,
    ),
  ];
  List icons4 = [
    Icon(
      Icons.call_sharp,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.search_rounded,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.details,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.stop,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.arrow_right,
      size: 40,
      color: Colors.grey.shade600,
    ),
  ];
  List icons5 = [
    Icon(
      Icons.apps_sharp,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.workspaces_outline,
      size: 40,
      color: Colors.grey.shade600,
    ),
    Icon(
      Icons.wifi_lock_outlined,
      size: 40,
      color: Colors.grey.shade600,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Icons",style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: icons1
                      .map(
                        (e) => Container(
                      height: 130,
                      width: 130,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      child: e,
                    ),
                  )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: icons2
                      .map(
                        (e) => Container(
                      height: 130,
                      width: 130,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                      ),
                      alignment: Alignment.center,
                      child: e,
                    ),
                  )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: icons3
                      .map(
                        (e) => Container(
                      height: 130,
                      width: 130,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                      ),
                      alignment: Alignment.center,
                      child: e,
                    ),
                  )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: icons4
                      .map(
                        (e) => Container(
                      height: 130,
                      width: 130,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,

                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                      ),
                      alignment: Alignment.center,
                      child: e,
                    ),
                  )
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: icons5
                      .map(
                        (e) => Container(
                      height: 130,
                      width: 130,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 5))
                        ],
                      ),
                      alignment: Alignment.center,
                      child: e,
                    ),
                  )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),backgroundColor: Colors.white,
    );
  }
}
