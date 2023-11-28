import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // useMaterial3: true,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final double containerWidthFraction = 0.45;
  final double containerHeightFraction = 0.15;

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salomlar'),
        centerTitle: true,
        actions: const [
          Center(
            child: Text("authProvider.username"),
          )
        ],
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text(
                  "authProvider.username",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "authProvider.email",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                ),
                title: const Text('Profile'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.train,
                ),
                title: const Text('Page 2'),
                onTap: () {},
              ),
              const AboutListTile(
                icon: Icon(
                  Icons.info,
                ),
                applicationIcon: Icon(
                  Icons.local_play,
                ),
                applicationName: 'My Cool App',
                applicationVersion: '1.0.25',
                applicationLegalese: '© 2023 Company',
                aboutBoxChildren: [
                  /// Content goes here...
                ],
                child: Text('About app'),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              child: Container(
                child: ImageBanner("assets/images/Home.png"),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width *
                      containerWidthFraction *
                      2,
                  alignment: Alignment.centerLeft,
                  child: Text("Guruhlar", textAlign: TextAlign.left, style: TextStyle(fontSize: 15),),
                ),
                Container(
                  height: MediaQuery.of(context).size.height *
                      containerHeightFraction *
                      0.7,
                  color: Colors.black12,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width *
                            containerWidthFraction *
                            0.6,
                        // color: Colors.black12,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  containerHeightFraction *
                                  0.7,
                              // color: Colors.black12,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Set the background color of the button
                                ),
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 3.0)),
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          containerHeightFraction *
                                          0.5,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(300),
                                          // color: Colors.cyanAccent
                                          ),
                                      child: Image.asset('assets/images/delec.png'),
                                    ),
                                    Container(
                                      // color: Colors.black12,
                                      child: Text("Shirinliklar"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width *
                            containerWidthFraction *
                            0.6,
                        // color: Colors.black12,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  containerHeightFraction *
                                  0.7,
                              // color: Colors.black12,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Set the background color of the button
                                ),
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 3.0)),
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          containerHeightFraction *
                                          0.5,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(300),
                                          // color: Colors.cyanAccent
                                          ),
                                      child: Image.asset('assets/images/plov.png'),
                                    ),
                                    Container(
                                      // color: Colors.black12,
                                      child: Text("Quyuq taom"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width *
                            containerWidthFraction *
                            0.6,
                        // color: Colors.black12,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  containerHeightFraction *
                                  0.7,
                              // color: Colors.black12,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Set the background color of the button
                                ),
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 3.0)),
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          containerHeightFraction *
                                          0.5,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(300),
                                          // color: Colors.cyanAccent
                                          ),
                                      child: Image.asset('assets/images/suyuq.png'),
                                    ),
                                    Container(
                                      // color: Colors.black12,
                                      child: Text("Suyuq taom"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width *
                            containerWidthFraction *
                            0.6,
                        // color: Colors.black12,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  containerHeightFraction *
                                  0.7,
                              // color: Colors.black12,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Set the background color of the button
                                ),
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 3.0)),
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          containerHeightFraction *
                                          0.5,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(300),
                                          // color: Colors.cyanAccent
                                          ),
                                      child: Image.asset('assets/images/fast.png'),
                                    ),
                                    Container(
                                      // color: Colors.black12,
                                      child: Text("Fast food"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width *
                            containerWidthFraction *
                            0.6,
                        // color: Colors.black12,
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height *
                                  containerHeightFraction *
                                  0.7,
                              // color: Colors.black12,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors
                                      .transparent, // Set the background color of the button
                                ),
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    Padding(padding: EdgeInsets.only(top: 3.0)),
                                    Container(
                                      height: MediaQuery.of(context).size.height *
                                          containerHeightFraction *
                                          0.5,
                                      decoration: BoxDecoration(
                                          // borderRadius: BorderRadius.circular(300),
                                          // color: Colors.cyanAccent
                                          ),
                                      child: Image.asset('assets/images/other.png'),
                                    ),
                                    Container(
                                      // color: Colors.black12,
                                      child: Text("Boshqalar"),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 5.0)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height *
                      containerHeightFraction *
                      0.3,
                  width: MediaQuery.of(context).size.width *0.91,
                  decoration: BoxDecoration(
                    color: Colors.black26
                  ),
                  child: Text("Tez-tez ko'rilganlar", textAlign: TextAlign.center, style: TextStyle(fontSize: 25, color: Colors.blue),),
                ),
                Container(
                  height: MediaQuery.of(context).size.height *
                      containerHeightFraction *
                      3,
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.4,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/plov.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "Osh",
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 5.0)),
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.4,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/pie.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "To'rt",
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.5,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/shashlik.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "Shashlik",
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 5.0)),
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.5,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/soup.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "Sho'rva",
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.5,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/assorti.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "Assorti",
                                  style: TextStyle(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 5.0)),
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.5,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/norin.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "Norin",
                                  style: TextStyle(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(top: 10.0)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.5,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/manti.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "Manti",
                                  style: TextStyle(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(right: 5.0)),
                          Column(
                            children: [
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    containerHeightFraction *
                                    1,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(3, 5, 10, 0),
                                  height: MediaQuery.of(context).size.height *
                                      containerHeightFraction *
                                      1.5,
                                  width: MediaQuery.of(context).size.width *
                                      containerWidthFraction,
                                  decoration: BoxDecoration(
                                    color: Color(0x69027ee5),
                                    // border: Border.all(color: Colors.blue, width: 1),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                    image: DecorationImage(
                                        image: AssetImage('assets/images/somsa.jpg'),
                                        fit: BoxFit.fill),
                                  ),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(''),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    containerWidthFraction,
                                decoration: BoxDecoration(color: Colors.black26),
                                child: Text(
                                  "Somsa",
                                  style: TextStyle(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}