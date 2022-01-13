import 'package:flutter/material.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:united_finance/parts/MyDrawer.dart';
import 'package:united_finance/parts/myBottomBar.dart';

import 'notifications.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contacu Us"),
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
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Customer Care",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(172, 245, 244, 177),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * .25,
                      child: const Icon(
                        IcoFontIcons.contacts,
                        size: 76,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "For Feedback/Concern",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("Call us at"),
                      Text(
                        "+91 7478596100",
                        style: TextStyle(fontSize: 21),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            const Text(
              "Branch Timings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(172, 245, 244, 177),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("All Branches",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text("Monday - Friday     9.30 am to 4.30 pm "),
                  Text(
                      "Saturday 9.30 am to 2.00 pm\n(On 1st, 3rd, 5th Saturday) "),
                  Text(
                    "Branch will remain closed on 2nd and 4th Saturday of every month and on respective State Holidays.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
