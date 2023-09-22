import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/question_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  //Define datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/images/background_image _for_project.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Simple Quiz App',
                style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              _questionWidget(),
              _answerList(),
              _nextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Question ${currentQuestionIndex + 1}/${questionList.length.toString()}',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
          width: double.infinity,
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected;
    if (answer == selectedAnswer) {
      isSelected = true;
    } else {
      isSelected = false;
    }
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.greenAccent : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        child: Text(answer.answerText),
      ),
    );
  }

  Widget _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        onPressed: () {
          if (isLastQuestion) {
            //display score
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              currentQuestionIndex++;
              selectedAnswer = null;
            });
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        child: Text(isLastQuestion ? 'Submit' : 'Next'),
      ),
    );
  }

  Widget _showScoreDialog() {
    bool isPassed = false;
    if (score >= questionList.length * 0.5) {
      isPassed = true;
    }
    String title = isPassed ? 'Passed' : 'Failed';
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
          ),
          Text(
            'Score:   ${score.toString()}',
            style: const TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w300),
          ),
        ],
      ),
      backgroundColor: isPassed ? Colors.green : Colors.red,
      content: ElevatedButton(
        onPressed: () {
          setState(() {
            Navigator.pop(context);
            currentQuestionIndex = 0;
            score = 0;
            selectedAnswer = null;
          });
        },
        child: const Text('Restart'),
      ),
    );
  }
}
