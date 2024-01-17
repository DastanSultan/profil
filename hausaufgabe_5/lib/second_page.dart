import 'package:flutter/material.dart';

import 'main.dart';

// ignore: must_be_immutable, camel_case_types
class second_page extends StatelessWidget {
  second_page(
      {required this.aty,
      required this.nunm,
      required this.nachname,
      required this.monat,
      required this.wohnOrts,
      required this.buildungs,
      required this.geschlichte});
  int nunm;
  String aty, nachname, monat, wohnOrts, buildungs, geschlichte;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDev(
        nunmd: nunm,
      ),
    );
  }
}

class MyDev extends StatefulWidget {
  final int nunmd;

  MyDev({Key? key, required this.nunmd}) : super(key: key);

  @override
  MyDevState createState() => MyDevState(
      nunmd: nunmd,
      names: names,
      nachname: familie_nam,
      monats: monat_name,
      wohnOrts: wohnOrts,
      buildungs: buildungs,
      geschlichte: geschlichte);
}

class MyDevState extends State<MyDev> {
  int nunmd;

  String names, nachname, monats, wohnOrts, buildungs, geschlichte;

  MyDevState(
      {required this.nunmd,
      required this.names,
      required this.nachname,
      required this.monats,
      required this.wohnOrts,
      required this.buildungs,
      required this.geschlichte});
  Widget sizedBox = SizedBox(
    height: 35,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vorschau'),
      ),
      backgroundColor: Color(0xffDBE2E9),
      body: Container(
          child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: Column(
              children: [
                Container(
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      child: Icon(
                        Icons.account_circle,
                        size: 100,
                      ),
                    ),
                    sizedBox,
                  ]),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'Vorname',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blueGrey),
                              ),
                            ),
                            sizedBox,
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'Nachname',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blueGrey),
                              ),
                            ),
                            sizedBox,
                            // Begin контейнер для дата рождения
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'Geburtstag:',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blueGrey),
                              ),
                            ),
                            sizedBox,
                            // Ende контейнер для дата рождения
                            // Begin контейнер для определение пол
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'Geschlichte',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blueGrey),
                              ),
                            ),
                            sizedBox,
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'Geburtsort',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blueGrey),
                              ),
                            ),
                            sizedBox,
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                'Bildung',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.blueGrey),
                              ),
                            ),
                            sizedBox,
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.black)),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                '$nachname',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            sizedBox,
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                '$names',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            sizedBox,
                            // Begin контейнер для дата рождения
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                '$nunmd-$monats $year',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            sizedBox,
                            // Ende контейнер для дата рождения
                            // Begin контейнер для определение пол
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                '$geschlichte',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            sizedBox,
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                '$wohnOrts',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            sizedBox,
                            Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Text(
                                '$buildungs',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            sizedBox,
                            // Ende контейнер для определение пол
                            // sized_box_20,
                            // Begin контейнер для кнопки чтобы пройти следующего экрана
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyApp(
                            tag: nunmd,
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFBDb7AB),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Ändern',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
