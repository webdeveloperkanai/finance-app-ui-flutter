import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:icofont_flutter/icofont_flutter.dart';
import 'package:united_finance/parts/MyDrawer.dart';
import 'package:united_finance/parts/myBottomBar.dart';

import 'notifications.dart';

class TrackApplication extends StatefulWidget {
  const TrackApplication({Key? key}) : super(key: key);

  @override
  _TrackApplicationState createState() => _TrackApplicationState();
}

class _TrackApplicationState extends State<TrackApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Track Application"),
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
      body: Container(
        height: MediaQuery.of(context).size.height * .3,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(252, 255, 229, 212),
        ),
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            FormBuilderTextField(
              name: "search",
              decoration: const InputDecoration(
                label: Text("Enter Application Id"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              padding: EdgeInsets.all(5),
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Search Application"),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ))),
              ),
            )
          ],
        ),
      ),
      drawer: const MyDrawer(),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
