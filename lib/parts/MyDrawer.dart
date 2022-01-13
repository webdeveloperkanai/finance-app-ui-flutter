import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:united_finance/contact.dart';

import '../main.dart';
import '../webPage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.red,
            height: 110,
            child: const Image(image: AssetImage('assets/img/logo.png')),
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(15),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 110,
            child: ListView(
              children: [
                ListTile(
                  title: const Text("Home"),
                  leading: const Icon(IcoFontIcons.uiHome),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                ),
                ListTile(
                  title: const Text("Pay EMI & Dues "),
                  leading: const Icon(IcoFontIcons.pay),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => WebPage(
                                  url: "https://loan.devsecit.com/calc.php",
                                  title: "EMI Calculator",
                                )));
                  },
                ),
                ListTile(
                  title: const Text("Our Products"),
                  leading: const Icon(IcoFontIcons.moneyBag),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                ),
                ListTile(
                  title: const Text("Insurance"),
                  leading: const Icon(IcoFontIcons.fileAlt),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                ),
                ListTile(
                  title: const Text("Customer Service"),
                  leading: const Icon(IcoFontIcons.phone),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ContactUs()));
                  },
                ),
                ListTile(
                  title: const Text("Language Selection"),
                  leading: const Icon(IcoFontIcons.globe),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                ),
                ListTile(
                  title: const Text("About Us"),
                  leading: const Icon(IcoFontIcons.fileAlt),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                ),
                ListTile(
                  title: const Text("Login"),
                  leading: const Icon(IcoFontIcons.login),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
