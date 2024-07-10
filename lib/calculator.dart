import 'package:flutter/material.dart';

class Calculuator extends StatefulWidget {
  const Calculuator({super.key});

  @override
  State<Calculuator> createState() => _CalculuatorState();
}

class _CalculuatorState extends State<Calculuator> {
  String userEntryOne = '';
  String userEntryTwo = '';
  String operator = '';

  double answer = 0.0;

  aritnmetic() {
    if (userEntryOne.isNotEmpty &&
        userEntryTwo.isNotEmpty &&
        operator.isNotEmpty) {
      if (operator == '/') {
        answer = double.parse(userEntryOne) / double.parse(userEntryTwo);
      } else if (operator == 'x') {
        answer = double.parse(userEntryOne) * double.parse(userEntryTwo);
      } else if (operator == '-') {
        answer = double.parse(userEntryOne) - double.parse(userEntryTwo);
      }
      if (operator == '+') {
        answer = double.parse(userEntryOne) + double.parse(userEntryTwo);
      }
    }
    setState(() {});
  }

  clear() {
    userEntryOne = '';
    userEntryTwo = '';
    operator = '';
    answer = 0.0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 252, 252),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    userEntryOne + operator + userEntryTwo,
                    style: TextStyle(fontSize: 40,color: answer.toString().length > 11?Colors.grey:Colors.black),
                  ),
                  Text(
                    answer.toString(),
                    style: TextStyle(fontSize:answer.toString().length>11?40: 80),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.sizeOf(context).height - 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          clear();
                        },
                        child: CustomButton(
                            buttonText: 'Ac',
                            buttonColor: Color.fromARGB(255, 246, 224, 191)),
                      ),
                      InkWell(
                        onTap: () {
                          if (userEntryOne.contains('-')) {
                            userEntryOne = userEntryOne.replaceAll('-', '');
                          } else {
                            userEntryOne = '-' + userEntryOne;
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '+/-',
                            buttonColor: Color.fromARGB(255, 246, 224, 191)),
                      ),
                      InkWell(
                        onTap: () {
                          if (answer != 0.0) {
                            answer = answer / 100;
                            setState(() {});
                          }
                        },
                        child: CustomButton(
                            buttonText: '%',
                            buttonColor: Color.fromARGB(255, 246, 224, 191)),
                      ),
                      InkWell(
                        onTap: () {
                          if (userEntryOne.isNotEmpty && userEntryOne != '-') {
                            operator = '/';
                            setState(() {});
                          }
                        },
                        child: CustomButton(
                            buttonText: '/', buttonColor: Colors.orangeAccent),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '7';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '7';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '7',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '8';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '8';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '8',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '9';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '9';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '9',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (userEntryOne.isNotEmpty && userEntryOne != '-') {
                            operator = '-';
                            setState(() {});
                          }
                        },
                        child: CustomButton(
                            buttonText: '-', buttonColor: Colors.orangeAccent),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '4';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '4';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '4',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '5';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '5';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '5',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '6';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '6';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '6',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (userEntryOne.isNotEmpty && userEntryOne != '-') {
                            operator = '+';
                            setState(() {});
                          }
                        },
                        child: CustomButton(
                            buttonText: '+', buttonColor: Colors.orangeAccent),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '1';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '1';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '1',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '2';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '2';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '2',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '3';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '3';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '3',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (userEntryOne.isNotEmpty && userEntryOne != '-') {
                            operator = 'x';
                            setState(() {});
                          }
                        },
                        child: CustomButton(
                            buttonText: 'x', buttonColor: Colors.orangeAccent),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          if (userEntryOne.isNotEmpty && operator.isEmpty) {
                            userEntryOne = userEntryOne.substring(
                                0, userEntryOne.length - 1);
                          } else if (userEntryTwo.isNotEmpty &&
                              operator.isNotEmpty) {
                            userEntryTwo = userEntryTwo.substring(
                                0, userEntryTwo.length - 1);
                          } else if (userEntryTwo.isEmpty &&
                              operator.isNotEmpty) {
                            operator = '';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '<',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty && answer == 0.0) {
                            userEntryOne = userEntryOne + '0';
                          } else if (operator.isNotEmpty && answer == 0.0) {
                            userEntryTwo = userEntryTwo + '0';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '0',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          if (operator.isEmpty &&
                              !userEntryOne.contains('.') &&
                              userEntryOne.isEmpty) {
                            userEntryOne = '0.' + userEntryOne;
                          }
                         else if (operator.isEmpty &&
                              !userEntryOne.contains('.') &&
                              userEntryOne.isNotEmpty) {
                            userEntryOne = userEntryOne + '.';
                          }

                            if (operator.isNotEmpty &&
                              !userEntryTwo.contains('.') &&
                              userEntryTwo.isEmpty) {
                            userEntryTwo = '0.' + userEntryTwo;
                          } else if (operator.isNotEmpty &&
                              !userEntryTwo.contains('.') &&
                              userEntryTwo.isNotEmpty) {
                            userEntryTwo = userEntryTwo + '.';
                          }
                          setState(() {});
                        },
                        child: CustomButton(
                            buttonText: '.',
                            buttonColor: Color.fromARGB(255, 234, 233, 233)),
                      ),
                      InkWell(
                        onTap: () {
                          aritnmetic();
                        },
                        child: CustomButton(
                            buttonText: '=', buttonColor: Colors.orangeAccent),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container CustomButton(
      {required String buttonText, required Color buttonColor}) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor,
          gradient: LinearGradient(colors: [
            buttonColor,
            Colors.white,
          ], begin: Alignment.center, end: Alignment.bottomRight),
          boxShadow: const [
            BoxShadow(
                offset: Offset(2, 2),
                spreadRadius: .2,
                blurRadius: .2,
                color: Colors.grey)
          ]),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
