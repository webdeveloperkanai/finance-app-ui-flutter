import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import 'notifications.dart';

class ApplyLoan extends StatefulWidget {
  var loan;
  ApplyLoan({this.loan});

  @override
  _ApplyLoanState createState() => _ApplyLoanState();
}

class _ApplyLoanState extends State<ApplyLoan> {
  List genderOptions = ['Male', 'Female'];
  List Mydocuments = ['Adhar Card', 'Voter Card', 'Passport'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Applicant Details"),
        backgroundColor: const Color.fromARGB(235, 145, 3, 3),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  color: const Color.fromARGB(255, 228, 226, 222),
                  width: MediaQuery.of(context).size.width * .49,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Mobile Number"),
                      const Text(
                        "7478596101",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  color: const Color.fromARGB(255, 228, 226, 222),
                  width: MediaQuery.of(context).size.width * .49,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text("Pan Number"),
                      const Text(
                        "PAN10151",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(25),
              // height: MediaQuery.of(context).size.height * .7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Basic Details ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ignore: prefer_const_constructors
                  TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      label: const Text("First name"),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .49 - 30,
                        child: const TextField(
                          decoration: InputDecoration(
                            label: Text("Middle name"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .49 - 30,
                        child: const TextField(
                          decoration: InputDecoration(
                            label: Text("Last name"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  const SizedBox(
                    height: 15,
                  ),
                  const Text("Select Date of birth *"),
                  DateTimePicker(
                    type: DateTimePickerType.date,
                    dateMask: 'd MMM, yyyy',
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2100),
                    icon: Icon(Icons.event),
                    onChanged: (v) {
                      print("Date value is " + v);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FormBuilderRadioGroup(
                    decoration:
                        const InputDecoration(labelText: 'Select Gender'),
                    name: 'Gnder',
                    options: [
                      'Male',
                      'Female',
                    ]
                        .map((lang) => FormBuilderFieldOption(value: lang))
                        .toList(growable: false),
                  ),

                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Residence Adress ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FormBuilderTextField(
                    name: "address",
                    decoration: const InputDecoration(
                        label: Text("Flat no. Building Name")),
                  ),
                  FormBuilderTextField(
                    name: "address",
                    decoration: const InputDecoration(
                        label: Text("Road Name, Area, Colony")),
                  ),
                  FormBuilderTextField(
                    name: "address",
                    decoration: const InputDecoration(label: Text("Landmark")),
                  ),

                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .49 - 30,
                        child: FormBuilderTextField(
                          name: "pin",
                          decoration:
                              const InputDecoration(label: Text("Pin Code *")),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .49 - 30,
                        child: FormBuilderTextField(
                          name: "city",
                          decoration:
                              const InputDecoration(label: Text("City *")),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FormBuilderTextField(
                    name: "city",
                    decoration: const InputDecoration(label: Text("State *")),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FormBuilderDropdown(
                    name: 'proof',
                    icon: const Icon(Icons.file_copy),
                    decoration: const InputDecoration(
                      labelText: 'Select Proof',
                    ),
                    allowClear: true,
                    hint: const Text('Select Proof'),
                    items: Mydocuments.map((gender) => DropdownMenuItem(
                          value: gender,
                          child: Text('$gender'),
                        )).toList(),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .49 - 30,
                        child: FormBuilderImagePicker(
                          name: "name",
                          maxImages: 1,
                          decoration:
                              const InputDecoration(label: Text("Front Image")),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .49 - 30,
                        child: FormBuilderImagePicker(
                          name: "name",
                          maxImages: 1,
                          decoration:
                              const InputDecoration(label: Text("Back Image")),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    padding: EdgeInsets.all(5),
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Submit Application"),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ))),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
