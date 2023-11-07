import 'dart:developer';

import 'package:flutter/material.dart';

import '../Utils/marksheetData.dart';

class GetMarks extends StatefulWidget {
  const GetMarks({super.key});

  @override
  State<GetMarks> createState() => _GetMarksState();
}

class _GetMarksState extends State<GetMarks> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          SafeArea(
                            child: Center(
                              child: const Text(
                                "Enter Marks",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 3,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              MarksheetData.accountController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: MarksheetData.accountController,
                            decoration: const InputDecoration(
                              labelText: 'Account',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              MarksheetData.statController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: MarksheetData.statController,
                            decoration: const InputDecoration(
                              labelText: 'Stat',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              MarksheetData.ecoController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: MarksheetData.ecoController,
                            decoration: const InputDecoration(
                              labelText: 'Eco',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              MarksheetData.englishController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: MarksheetData.englishController,
                            decoration: const InputDecoration(
                              labelText: 'English',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              MarksheetData.gujaratiController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: MarksheetData.gujaratiController,
                            decoration: const InputDecoration(
                              labelText: 'Gujarati',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              MarksheetData.spController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: MarksheetData.spController,
                            decoration: const InputDecoration(
                              labelText: 'S.P',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            onSaved: (String? val) {
                              MarksheetData.baController.text = val!;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            keyboardType: TextInputType.number,
                            controller: MarksheetData.baController,
                            decoration: const InputDecoration(
                              labelText: 'B.A',
                              labelStyle: TextStyle(color: Colors.blue),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        MarksheetData.account =
                            MarksheetData.accountController.text;
                        log("${MarksheetData.account}");

                        MarksheetData.stat = MarksheetData.statController.text;
                        log("${MarksheetData.stat}");

                        MarksheetData.eco = MarksheetData.ecoController.text;
                        log("${MarksheetData.eco}");

                        MarksheetData.english =
                            MarksheetData.englishController.text;
                        log("${MarksheetData.english}");

                        MarksheetData.gujarati =
                            MarksheetData.gujaratiController.text;
                        log("${MarksheetData.gujarati}");

                        MarksheetData.sp = MarksheetData.spController.text;
                        log("${MarksheetData.sp}");

                        MarksheetData.ba = MarksheetData.baController.text;
                        log("${MarksheetData.ba}");

                        Navigator.of(context).pushNamed('pdf');
                        MarksheetData.getTotal();
                        setState(() {
                          MarksheetData.accountController.clear();
                          MarksheetData.statController.clear();
                          MarksheetData.ecoController.clear();
                          MarksheetData.englishController.clear();
                          MarksheetData.gujaratiController.clear();
                          MarksheetData.spController.clear();
                          MarksheetData.baController.clear();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Get Marksheet",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
