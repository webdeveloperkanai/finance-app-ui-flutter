import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:united_finance/contact.dart';
import 'package:united_finance/loans.dart';
import 'package:united_finance/main.dart';
import 'package:united_finance/track.dart';

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color.fromARGB(235, 145, 3, 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
                icon: const Icon(IcoFontIcons.uiHome),
                color: Colors.white,
              ),
              const Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Loans()));
                },
                icon: const Icon(IcoFontIcons.pay),
                color: Colors.white,
              ),
              const Text(
                "Apply Loan",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TrackApplication()));
                },
                icon: const Icon(IcoFontIcons.search1),
                color: Colors.white,
              ),
              const Text(
                "Track Application",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContactUs()));
                },
                icon: const Icon(IcoFontIcons.phone),
                color: Colors.white,
              ),
              const Text(
                "Contact us",
                style: TextStyle(color: Colors.white, fontSize: 11),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
