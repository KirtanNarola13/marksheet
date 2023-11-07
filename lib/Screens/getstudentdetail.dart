import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:marksheet/Utils/marksheetData.dart';

class GetStudentDetail extends StatefulWidget {
  const GetStudentDetail({super.key});

  @override
  State<GetStudentDetail> createState() => _GetStudentDetailState();
}

class _GetStudentDetailState extends State<GetStudentDetail> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('lib/Images/homepage.png'),
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Form(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 80,
                            ),
                            TextFormField(
                              onSaved: (String? val) {
                                MarksheetData.schoolNameController.text = val!;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              controller: MarksheetData.schoolNameController,
                              decoration: const InputDecoration(
                                labelText: 'School Name',
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
                                MarksheetData.studentNameController.text = val!;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              controller: MarksheetData.studentNameController,
                              decoration: const InputDecoration(
                                labelText: 'Student Name',
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
                                MarksheetData.rollNumberController.text = val!;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              controller: MarksheetData.rollNumberController,
                              decoration: const InputDecoration(
                                labelText: 'Roll Number',
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
                                MarksheetData.examinationController.text = val!;
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              controller: MarksheetData.examinationController,
                              decoration: const InputDecoration(
                                labelText: 'Examination',
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
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        MarksheetData.schoolName =
                            MarksheetData.schoolNameController.text;
                        log("${MarksheetData.schoolName}");

                        MarksheetData.studentName =
                            MarksheetData.studentNameController.text;
                        log("${MarksheetData.studentName}");

                        MarksheetData.rollNumber =
                            MarksheetData.rollNumberController.text;
                        log("${MarksheetData.rollNumber}");

                        MarksheetData.examination =
                            MarksheetData.examinationController.text;
                        log("${MarksheetData.examination}");
                        Navigator.of(context).pushNamed('get_marks');
                        setState(() {
                          MarksheetData.schoolNameController.clear();
                          MarksheetData.studentNameController.clear();
                          MarksheetData.rollNumberController.clear();
                          MarksheetData.examinationController.clear();
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 70,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Next",
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
