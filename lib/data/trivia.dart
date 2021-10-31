class Trivia {
  final String answer;
  final bool correct;
  final List options;
  final String question;

  Trivia(
      {required this.answer,
      required this.correct,
      required this.options,
      required this.question});
}

class quest {
  static final List<Trivia> questions = [
    Trivia(
        answer: "Western Cape",
        correct: false,
        options: ["Gauteng", "KwaZulu-Natal", "Western Cape"],
        question: "What province is the mother city found in?"),
    Trivia(
        answer: "Kendrick Lamar",
        correct: false,
        options: ["Kanye West", "Kendrick Lamar", "J. Cole"],
        question: 'Which of the following artists made the hit singe "DNA"?')
  ];
}
