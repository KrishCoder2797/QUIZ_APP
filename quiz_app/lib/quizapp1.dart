import "package:flutter/material.dart";

class QuizApp2 extends StatefulWidget {
  const QuizApp2({super.key});
  @override
  State createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State {
  List allQuestions = [
    {
      "question": "What does CSS stand for??",
      "options": [
        "Computer Style Sheets",
        " Creative Style Sheets",
        "Cascading Style Sheets",
        "Colorful Style Sheets"
      ],
      "answerIndex": 2,
    },
    {
      "question":
          "Which protocol is used for secure communication over a network?",
      "options": [" SSH", " HTTP", " FTP", "Telnet"],
      "answerIndex": 0,
    },
    {
      "question":
          "Which of the following is a front-end web development framework??",
      "options": [" Express", " Flask", " Django", "Angular"],
      "answerIndex": 3,
    },
    {
      "question": "Who is the founder of Tesla?",
      "options": ["Steve Jobs", "Elon Musk", "Bill Gates", "Jeff Bezos"],
      "answerIndex": 1,
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Lary Page", "Bill Gates", "Jeff Bezos"],
      "answerIndex": 1,
    },
  ];

  Color color1 = Colors.black12;
  Color color2 = Colors.black12;
  Color color3 = Colors.black12;
  Color color4 = Colors.black12;
  bool isClicked = true;
  bool questionScreen = true;
  int questionIndex = 0;
  int correctAnswer = 0;
  bool isStart = false;
  Widget _body() {
    return isStart
        ? Center(
            child: SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    isStart = false;
                  });
                },
                child: const Text(
                  "Start Quiz",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        : Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Questions: ",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "${questionIndex + 1} / ${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: Text(
                  allQuestions[questionIndex]["question"],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 300,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: color1),
                  onPressed: isClicked
                      ? () {
                          isClicked = false;
                          setState(() {
                            int ans =
                                allQuestions[questionIndex]["answerIndex"];
                            if (0 == ans) {
                              color1 = Colors.green;
                              correctAnswer++;
                            } else {
                              color1 = Colors.red;
                              if (1 == ans) {
                                color2 = Colors.green;
                              } else if (2 == ans) {
                                color3 = Colors.green;
                              } else if (3 == ans) {
                                color4 = Colors.green;
                              }
                            }
                          });
                        }
                      : () {},
                  child: Text(
                    "A. ${allQuestions[questionIndex]["options"][0]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: color2),
                  onPressed: isClicked
                      ? () {
                          setState(() {
                            isClicked = false;
                            int ans =
                                allQuestions[questionIndex]["answerIndex"];
                            if (1 == ans) {
                              color2 = Colors.green;
                              correctAnswer++;
                            } else {
                              color2 = Colors.red;
                              if (0 == ans) {
                                color1 = Colors.green;
                              } else if (2 == ans) {
                                color3 = Colors.green;
                              } else if (3 == ans) {
                                color4 = Colors.green;
                              }
                            }
                          });
                        }
                      : () {},
                  child: Text(
                    "B. ${allQuestions[questionIndex]["options"][1]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: color3),
                  onPressed: isClicked
                      ? () {
                          setState(() {
                            isClicked = false;
                            int ans =
                                allQuestions[questionIndex]["answerIndex"];
                            if (2 == ans) {
                              color3 = Colors.green;
                              correctAnswer++;
                            } else {
                              color3 = Colors.red;
                              if (0 == ans) {
                                color1 = Colors.green;
                              } else if (1 == ans) {
                                color2 = Colors.green;
                              } else if (3 == ans) {
                                color4 = Colors.green;
                              }
                            }
                          });
                        }
                      : () {},
                  child: Text(
                    "C. ${allQuestions[questionIndex]["options"][2]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: color4),
                  onPressed: isClicked
                      ? () {
                          setState(() {
                            isClicked = false;
                            int ans =
                                allQuestions[questionIndex]["answerIndex"];
                            if (3 == ans) {
                              color4 = Colors.green;
                              correctAnswer++;
                            } else {
                              color4 = Colors.red;
                              if (0 == ans) {
                                color1 = Colors.green;
                              } else if (1 == ans) {
                                color2 = Colors.green;
                              } else if (2 == ans) {
                                color3 = Colors.green;
                              }
                            }
                          });
                        }
                      : () {},
                  child: Text(
                    "D. ${allQuestions[questionIndex]["options"][3]}",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ],
          );
  }

  Scaffold isQuetionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: _body(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (isClicked == false) {
                if (questionIndex == allQuestions.length - 1) {
                  questionScreen = false;
                } else {
                  questionIndex++;
                  isClicked = true;
                  color1 = Colors.black12;
                  color2 = Colors.black12;
                  color3 = Colors.black12;
                  color4 = Colors.black12;
                }
              }
            });
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.black,
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Image.network(
                "https://i.pinimg.com/736x/4a/08/30/4a083000a80262e2ccd897a6f7bfbd36.jpg"),
            const Text(
              "Congratulations!!!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Your score is : $correctAnswer",
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: (() {
                  setState(() {
                    questionScreen = true;
                    correctAnswer = 0;
                    questionIndex = 0;
                    isClicked = true;
                    color1 = Colors.black12;
                    color2 = Colors.black12;
                    color3 = Colors.black12;
                    color4 = Colors.black12;
                  });
                }),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ))
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuetionScreen();
  }
}
