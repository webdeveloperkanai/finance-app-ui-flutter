import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:united_finance/apply.dart';
import 'package:united_finance/parts/MyDrawer.dart';
import 'package:united_finance/parts/myBottomBar.dart';

import 'config.dart';
import 'notifications.dart';

class Loans extends StatelessWidget {
  const Loans({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Apply Loan"),
        backgroundColor: const Color.fromARGB(235, 145, 3, 3),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const NotificationPage()));
              },
              icon: const Icon(IcoFontIcons.notification))
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ApplyLoan(
                              loan: "Personal Loan",
                            )));
              },
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
                    const Image(image: AssetImage('assets/img/emi.png')),
                    const Text("Personal Loan"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ApplyLoan(
                                      loan: "Personal Loan",
                                    )));
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.red,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ApplyLoan(
                              loan: "Personal Loan",
                            )));
              },
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
                    const Image(image: AssetImage('assets/img/car.webp')),
                    const Text("Car Loan"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ApplyLoan(
                                      loan: "Car Loan",
                                    )));
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.red,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ApplyLoan(
                              loan: "Home Loan",
                            )));
              },
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
                    const Image(image: AssetImage('assets/img/home.webp')),
                    const Text("Home Loan"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ApplyLoan(
                                      loan: "Home Loan",
                                    )));
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.red,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ApplyLoan(
                              loan: "Education Loan",
                            )));
              },
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
                    const Image(image: AssetImage('assets/img/emi.png')),
                    const Text("Education Loan"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ApplyLoan(
                                      loan: "Education Loan",
                                    )));
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.red,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ApplyLoan(
                              loan: "Women Group Loan",
                            )));
              },
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
                    const Image(image: AssetImage('assets/img/emi.png')),
                    const Text("Women Group Loan"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ApplyLoan(
                                      loan: "Women Group Loan",
                                    )));
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.red,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ApplyLoan(
                              loan: "Business Loan",
                            )));
              },
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
                    const Image(image: AssetImage('assets/img/joinBull.webp')),
                    const Text("Business Loan"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ApplyLoan(
                                      loan: "Business Loan",
                                    )));
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.red,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
          FlatButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ApplyLoan(
                              loan: "KYC Loan",
                            )));
              },
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
                    const Image(image: AssetImage('assets/img/kyc.webp')),
                    const Text("KYC Loan"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ApplyLoan(
                                      loan: "KYC Loan",
                                    )));
                      },
                      child: const Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.red,
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
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
        ],
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
