import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/question_model.dart';
import '../widgets/question_widget.dart';
import '../widgets/next_button.dart';
import '../widgets/option_card.dart';
import '../widgets/result_box.dart';
import '../models/db_connect.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // connect to the database as db
  var db = DBconnect();
  late Future _questions;

  Future<List<Question>> getData() async {
    return db.fetchQuestions();
  }

  @override
  void initState() {
    _questions = getData();
    super.initState();
  }

  String personal = "";
  // index to loop through _questions
  int index = 0;
  // score for each personalities
  int Escore = 0;
  int Iscore = 0;
  int Sscore = 0;
  int Nscore = 0;
  int Tscore = 0;
  int Fscore = 0;
  int Jscore = 0;
  int Pscore = 0;
  bool isPressed = false;
  bool isAlreadySelected = false;

  // function to go to the next question
  void nextQuestion(int questionLength) {
    if (index == questionLength - 1) {
      findResult(Escore, Iscore, Sscore, Nscore, Tscore, Fscore, Jscore, Pscore);
      showDialog(
          context: context,
          barrierDismissible:
              false,
          builder: (ctx) => ResultBox(
                result: personal,
                questionLength: questionLength,
                onPressed: startOver,
              ));
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isAlreadySelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please select any option'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  void findResult(int E, int I, int S, int N, int T, int F, int J, int P){
    if (E >= I){
      personal += 'E';
    } else {
      personal += 'I';
    }

    if (S > N){
      personal += 'S';
    } else {
      personal += 'N';
    }

    if (T >= F){
      personal += 'T';
    } else {
      personal += 'F';
    }

    if (J > P){
      personal += 'J';
    } else {
      personal += 'P';
    }
  }

  void checkAnswerAndUpdate(String Qnumber,bool value) {
    if (isAlreadySelected) {
      return;
    } else {
      //Q1
      if (Qnumber == 'Q1' && value == true) {
        Jscore += 2;
      } else if (Qnumber == 'Q1' && value == false) {
        Pscore += 2;
      }
      //Q2
      if (Qnumber == 'Q2' && value == true) {
        Sscore += 2;
      } else if (Qnumber == 'Q2' && value == false) {
        Nscore += 2;
      }
      //Q3
      if (Qnumber == 'Q3' && value == true) {
        Escore += 2;
      } else if (Qnumber == 'Q3' && value == false) {
        Iscore += 2;
      }
      //Q4
      if (Qnumber == 'Q4' && value == true) {
        Fscore += 1;
      } else if (Qnumber == 'Q4' && value == false) {
        Tscore += 2;
      }
      //Q5
      if (Qnumber == 'Q5' && value == true) {
        Nscore += 1;
      } else if (Qnumber == 'Q5' && value == false) {
        Sscore += 1;
      }
      //Q6
      if (Qnumber == 'Q6' && value == true) {
        Escore += 2;
      } else if (Qnumber == 'Q6' && value == false) {
        Iscore += 1;
      }
      //Q7
      if (Qnumber == 'Q7' && value == true) {
        Jscore += 1;
      } else if (Qnumber == 'Q7' && value == false) {
        Pscore += 1;
      }
      //Q8
      if (Qnumber == 'Q8' && value == true) {
        Jscore += 1;
      } else if (Qnumber == 'Q8' && value == false) {
        Pscore += 2;
      }
      //Q9
      if (Qnumber == 'Q9' && value == true) {
        Escore += 2;
      } else if (Qnumber == 'Q9' && value == false) {
        Iscore += 1;
      }
      //Q10
      if (Qnumber == 'Q10' && value == true) {
        Sscore += 1;
      } else if (Qnumber == 'Q10' && value == false) {
        Nscore += 2;
      }
      //Q11
      if (Qnumber == 'Q11' && value == true) {
        Jscore += 2;
      } else if (Qnumber == 'Q11' && value == false) {
        Pscore += 1;
      }
      //Q12
      if (Qnumber == 'Q12' && value == true) {
        Sscore += 1;
      } else if (Qnumber == 'Q12' && value == false) {
        Nscore += 2;
      }
      //Q13
      if (Qnumber == 'Q13' && value == true) {
        Escore += 1;
      } else if (Qnumber == 'Q13' && value == false) {
        Iscore += 2;
      }
      //Q14
      if (Qnumber == 'Q14' && value == true) {
        Fscore += 1;
      } else if (Qnumber == 'Q14' && value == false) {
        Tscore += 2;
      }
      //Q15
      if (Qnumber == 'Q15' && value == true) {
        Nscore += 0;
      } else if (Qnumber == 'Q15' && value == false) {
        Sscore += 1;
      }
      //Q16
      if (Qnumber == 'Q16' && value == true) {
        Escore += 2;
      } else if (Qnumber == 'Q16' && value == false) {
        Iscore += 2;
      }
      //Q17
      if (Qnumber == 'Q17' && value == true) {
        Jscore += 2;
      } else if (Qnumber == 'Q17' && value == false) {
        Pscore += 2;
      }
      //Q18
      if (Qnumber == 'Q18' && value == true) {
        Jscore += 1;
      } else if (Qnumber == 'Q18' && value == false) {
        Pscore += 1;
      }
      //Q19
      if (Qnumber == 'Q19' && value == true) {
        Jscore += 1;
      } else if (Qnumber == 'Q19' && value == false) {
        Pscore += 1;
      }
      //Q20
      if (Qnumber == 'Q20' && value == true) {
        Sscore += 2;
      } else if (Qnumber == 'Q20' && value == false) {
        Nscore += 2;
      }

      setState(() {
        isPressed = true;
        isAlreadySelected = true;
      });
    }
  }

  // function to start over
  void startOver() {
    setState(() {
      index = 0;
      Escore = 0;
      Iscore = 0;
      Sscore = 0;
      Nscore = 0;
      Tscore = 0;
      Fscore = 0;
      Jscore = 0;
      Pscore = 0;
      isPressed = false;
      isAlreadySelected = false;
      personal = "";
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _questions as Future<List<Question>>,
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            var extractedData = snapshot.data as List<Question>;
            return Scaffold(
              backgroundColor: background,
              appBar: AppBar(
                title: const Text('Quiz App'),
                backgroundColor: background,
                shadowColor: Colors.transparent,
                actions: <Widget>[ElevatedButton(
                  onPressed: () {
                    // Navigate to the second screen when tapped.
                    Navigator.pushNamed(context, '/info');
                  },
                  child: const Text('MBTI Info'),
                ),],
              ),
              body: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    QuestionWidget(
                      indexAction: index, // start at 0.
                      question: extractedData[index]
                          .title, // which is the first question in the list.
                      totalQuestions:
                          extractedData.length,
                    ),
                    const Divider(color: neutral),

                    const SizedBox(height: 25.0),
                    for (int i = 0;
                        i < extractedData[index].options.length;
                        i++)
                      GestureDetector(
                        onTap: () => checkAnswerAndUpdate(
                            extractedData[index].id.toString(),
                            extractedData[index].options.values.toList()[i]),
                        child: OptionCard(
                          option: extractedData[index].options.keys.toList()[i],
                          color: isPressed == true ? answered : neutral,
                        ),
                      ),
                  ],
                ),
              ),

              floatingActionButton: GestureDetector(
                onTap: () => nextQuestion(extractedData.length),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: NextButton(
                      ),
                ),
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
            );

          }
        } else {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 20.0),
                Text(
                  'Loading Questions...',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.none,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          );
        }

        return const Center(
          child: Text('No Data'),
        );
      },
    );
  }
}