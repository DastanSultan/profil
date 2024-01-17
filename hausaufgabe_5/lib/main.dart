import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hausaufgabe_5/second_page.dart';

void main() => runApp(MyDev(
      tag: tag,
    ));

class MyDev extends StatelessWidget {
  MyDev({super.key, required this.tag});
  int tag = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(
        tag: tag,
      ),
    );
  }
}

int tag = 1;

class MyApp extends StatefulWidget {
  MyApp({super.key, required this.tag});
  int tag = 1;
  @override
  MyAppState createState() => MyAppState(tag: tag);
}

List<String> buildung = [
  'Mittlere Reife',
  'Ausbildung',
  'Studium',
];
List<String> monat = [
  'Januar',
  'Februar',
  'März',
  'April',
  'Mai',
  'Juni',
  'Juli',
  'August',
  'September',
  'Oktober',
  'November',
  'Dezember',
];

TextEditingController name_controller = TextEditingController();
TextEditingController familie_name = TextEditingController();
TextEditingController wohnOrt = TextEditingController();
String familie_nam = '';
String names = '';
String wohnOrts = '';
int num = 0;

String monats = '';
int year = 2003;
int maxyear = 2005;
int minyear = 1973;

int sanmi = buildung.length;
String buildungs = 'Mittlere Reife';

int num_monat = monat.length;
String monat_name = 'Juli';
String geschlichte = 'Mannlich';

class MyAppState extends State<MyApp> {
  MyAppState({required this.tag});
  int tag = 1;

  bass() {
    setState(() {
      if (num >= sanmi - 1) {
        num = 0;
      } else {
        num++;
      }
      buildungs = buildung[num];

      print('$buildungs');
      print('$num');
    });
  }

  birth_day_plus() {
    setState(() {
      if (tag == 31) {
        tag = 1;
      } else {
        tag++;
      }
    });
  }

  birth_day_minus() {
    setState(() {
      if (tag == 1) {
        tag = 31;
      } else {
        tag--;
      }
    });
  }

  birth_monath() {
    setState(() {
      if (num == 11) {
        num = 0;
      } else {
        num++;
      }

      monat_name = monat[num];
      print('$monat_name');
    });
  }

  birth_monath_minus() {
    setState(() {
      if (num == 0) {
        num = 11;
      } else {
        num--;
      }

      monat_name = monat[num];
      print('$monat_name');
    });
  }

//Все виджеты
  Widget sized_box = SizedBox(
    height: 20,
  );
  Widget sized_box_30 = SizedBox(
    width: 40,
  );
  Widget sized_box_20 = SizedBox(
    height: 30,
    width: 20,
  );

  @override
  Widget build(BuildContext context) {
    double width_screen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffDBE2E9),
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Container(
          width: width_screen * 0.9,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: Column(
                  children: [
                    // sized_box,
                    Container(
                      child: Icon(
                        Icons.account_circle,
                        size: 100,
                      ),
                    ),
                    Container(
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        controller: name_controller,
                        onChanged: (value) {
                          setState(() {
                            names = name_controller.text;
                            print('$names');
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Vorname',
                        ),
                      ),
                    ),
                    // sized_box_20,
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: TextField(
                        onChanged: (vaue) {
                          familie_nam = familie_name.text;
                          print('$familie_nam');
                        },
                        style:  TextStyle(fontSize: 18),
                        controller: familie_name,
                        decoration: InputDecoration(
                          labelText: 'Nachname',
                        ),
                      ),
                    ),
                    sized_box_20,
                    // Begin контейнер для дата рождения
                    Container(
                      width: width_screen * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    birth_day_plus();
                                  },
                                  child: Container(
                                    child: Icon(
                                      Icons.arrow_drop_up_sharp,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    '$tag',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    birth_day_minus();
                                  },
                                  child: Container(
                                      child: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    size: 40,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    birth_monath();
                                  },
                                  child: Container(
                                    child: Icon(
                                      Icons.arrow_drop_up_sharp,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  child: Text('$monat_name',
                                      style: TextStyle(fontSize: 18)),
                                ),
                                GestureDetector(
                                  onTap: () => birth_monath_minus(),
                                  child: Container(
                                      child: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    size: 40,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (year == maxyear) {
                                        year = minyear;
                                      } else {
                                        year++;
                                      }
                                    });

                                    print('$year');
                                  },
                                  child: Container(
                                    child: Icon(
                                      Icons.arrow_drop_up_sharp,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text('$year',
                                      style: TextStyle(fontSize: 18)),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (year == minyear) {
                                        year = maxyear;
                                      } else {
                                        year--;
                                      }
                                    });

                                    print('$year');
                                  },
                                  child: Container(
                                      child: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    size: 40,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Ende контейнер для дата рождения
                    sized_box_20,
                    // Begin контейнер для определение пол
                    Container(
                      child: Column(
                        children: [
                          // Container(
                          //   height: 40,
                          //   alignment: Alignment.center,
                          //   child: Text('Ваш пол'),
                          // ),
                          Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  geschlichte = 'Männlich';
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 30,
                                  color: Colors.grey,
                                  child: Text('Männlich',
                                      style: TextStyle(fontSize: 18)),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  geschlichte = 'Weiblich';
                                },
                                child: Container(
                                  child: Text('Weiblich',
                                      style: TextStyle(fontSize: 18)),
                                  alignment: Alignment.center,
                                  width: 150,
                                  height: 30,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )),
                        ],
                      ),
                    ),
                    sized_box,
                    Container(
                      child: TextField(
                        controller: wohnOrt,
                        onChanged: (value) {
                          setState(() {
                            wohnOrts = wohnOrt.text;
                          });
                        },
                        style: TextStyle(fontSize: 18),
                        decoration:
                            InputDecoration(labelText: 'Wo wohnen Sie?'),
                      ),
                    ),
                    sized_box_20,
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              '$buildungs',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bass();
                              });
                            },
                            child: Container(
                              child: Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Ende контейнер для определение пол
                    sized_box_20,
                    // Begin контейнер для кнопки чтобы пройти следующего экрана
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => second_page(
                                  nunm: tag,
                                  nachname: familie_nam,
                                  monat: monat_name,
                                  aty: names,
                                  wohnOrts: wohnOrts,
                                  geschlichte: geschlichte,
                                  buildungs: buildungs),
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
                          'Vorschau',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
