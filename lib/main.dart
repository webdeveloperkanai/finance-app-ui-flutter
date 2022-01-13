import 'dart:io';

import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:united_finance/notifications.dart';

import 'config.dart';
import 'parts/MyDrawer.dart';
import 'parts/myBottomBar.dart';
import 'parts/mySlider.dart';
import 'webPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: CONFIG.APPNAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: const Text("Do you want to exit ? "),
                actions: [
                  TextButton(
                      onPressed: () {
                        exit(0);
                      },
                      child: const Text("Yes")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("No"))
                ],
              );
            });
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(CONFIG.APPNAME),
          backgroundColor: const Color.fromARGB(235, 145, 3, 3),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationPage()));
                },
                icon: const Icon(IcoFontIcons.notification))
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .25,
              color: const Color.fromARGB(235, 145, 3, 3),
            ),
            SafeArea(
                child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: const Image(
                        image: AssetImage(
                          "assets/img/banner1.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    FlatButton(
                        padding: EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 232, 198),
                              borderRadius: BorderRadius.circular(10)),
                          height: 90,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                  image: AssetImage('assets/img/wait.png')),
                              Text(
                                  "Are you an \n${CONFIG.APPNAME}\nLoan Customer?"),
                              TextButton(
                                onPressed: () {},
                                child: const Text("Login"),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 161, 147, 125))))),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    const MySlider(),
                    const SizedBox(
                      height: 30,
                    ),
                    FlatButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 235, 235, 235),
                              borderRadius: BorderRadius.circular(10)),
                          height: 90,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Image(
                                  image: AssetImage('assets/img/emi.png')),
                              const Text("Pay EMI & Dues\nNow"),
                              TextButton(
                                onPressed: () {},
                                child: const Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.red,
                                ),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            side: const BorderSide(
                                                color: Color.fromARGB(
                                                    255, 161, 147, 125))))),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 170,
                      child: GridView.count(
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 232, 198),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 80,
                                      child: const Icon(
                                        Icons.location_on_outlined,
                                        size: 66,
                                      ),
                                    )),
                                const Text("Branch Locator")
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 232, 198),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => WebPage(
                                                    url:
                                                        "https://loan.devsecit.com/calc.php",
                                                    title: "EMI Calculator",
                                                  )));
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 80,
                                      child: const Icon(
                                        Icons.calculate,
                                        size: 66,
                                      ),
                                    )),
                                const Text("EMI Calculator"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
        drawer: const MyDrawer(),
        bottomNavigationBar: const MyBottomBar(),
      ),
    );
  }
}
