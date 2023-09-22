// ignore_for_file: public_member_api_docs, sort_constructors_first
class Question {
  final String questionText;
  List<Answer> answersList;
  Question(
    this.questionText,
    this.answersList,
  );
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer({required this.answerText, required this.isCorrect});
}

List<Question> getQuestions() {
  List<Question> list = [];
  //add questions and answers here
  list.add(
    Question(
      'Dünyanın yüzölçümü ne kadardır?',
      [
        Answer(answerText: ' 100 milyon km²', isCorrect: false),
        Answer(answerText: ' 200 milyon km²', isCorrect: false),
        Answer(answerText: ' 300 milyon km²', isCorrect: false),
        Answer(answerText: ' 400 milyon km²', isCorrect: true),
      ],
    ),
  );
  list.add(
    Question(
      "Azerbaycan'ın başkenti neresidir?",
      [
        Answer(answerText: ' Baku', isCorrect: true),
        Answer(answerText: ' Gence', isCorrect: false),
        Answer(answerText: ' Sumgayıt', isCorrect: false),
        Answer(answerText: 'Lankaran', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Hangi gezegen 'Akrep Kuyruğu' olarak da bilinir?",
      [
        Answer(answerText: ' Mars', isCorrect: false),
        Answer(answerText: ' Venus', isCorrect: false),
        Answer(answerText: ' Yupiter', isCorrect: true),
        Answer(answerText: 'Uranus', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Kim Azerbaycan'ın bağımsızlığını ilan etti?",
      [
        Answer(answerText: ' Nizami Ganjavi', isCorrect: false),
        Answer(answerText: ' Heydar Aliyev', isCorrect: false),
        Answer(answerText: ' Ilham Aliyev', isCorrect: false),
        Answer(answerText: 'Ebulfez Elçibey', isCorrect: true),
      ],
    ),
  );
  list.add(
    Question(
      "Hangi yıl Azerbaycan Sovyetler Birliği'nden bağımsızlığını kazandı?",
      [
        Answer(answerText: ' 1989', isCorrect: false),
        Answer(answerText: ' 1991', isCorrect: true),
        Answer(answerText: ' 1993', isCorrect: false),
        Answer(answerText: '1995', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Azerbaycan'ın en yüksek zirvesi hangi dağdır?",
      [
        Answer(answerText: ' Tufandag', isCorrect: false),
        Answer(answerText: ' Bazarduzu', isCorrect: true),
        Answer(answerText: ' Göyqol', isCorrect: false),
        Answer(answerText: 'Şahdağ', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Hangi yemek Azerbaycan mutfağının geleneksel bir örneğidir?",
      [
        Answer(answerText: ' Borscht', isCorrect: false),
        Answer(answerText: ' Sushi', isCorrect: false),
        Answer(answerText: ' Plov', isCorrect: true),
        Answer(answerText: 'Pizza', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Hangi dil Azerbaycan'ın resmi dili olarak kabul edilir?",
      [
        Answer(answerText: ' Ingilizce', isCorrect: false),
        Answer(answerText: ' Turkce', isCorrect: false),
        Answer(answerText: 'Rusca', isCorrect: false),
        Answer(answerText: 'Azerice', isCorrect: true),
      ],
    ),
  );
  list.add(
    Question(
      "Azerbaycan'ın denize kıyısı hangi denize açılır?",
      [
        Answer(answerText: ' Akdeniz', isCorrect: false),
        Answer(answerText: ' Karadeniz', isCorrect: false),
        Answer(answerText: 'Kasp Denizi', isCorrect: false),
        Answer(answerText: 'Hazar Denizi', isCorrect: true),
      ],
    ),
  );
  list.add(
    Question(
      "Kim Nobel Barış Ödülü'nü kazandıktan sonra 'Bakü'de Nobel Barış Merkezi'ni kurdu?",
      [
        Answer(answerText: ' Albert Einstein', isCorrect: false),
        Answer(answerText: ' Nelson Mandela', isCorrect: false),
        Answer(answerText: 'Mikhail Gorbachev', isCorrect: false),
        Answer(answerText: 'Leyla ve Arif Yunus', isCorrect: true),
      ],
    ),
  );
  list.add(
    Question(
      "Azerbaycan'ın milli marşı nedir?",
      [
        Answer(answerText: ' Mən Azərbaycanam ', isCorrect: false),
        Answer(answerText: ' Azərbaycan Marsı', isCorrect: false),
        Answer(answerText: 'Azərbaycan Marşı', isCorrect: true),
        Answer(answerText: 'Azərbaycan Bayrağı  ', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Azerbaycan'ın hangi tarihi şehri UNESCO Dünya Mirası olarak kabul edilmiştir?",
      [
        Answer(answerText: ' Baki ', isCorrect: false),
        Answer(answerText: ' Seki', isCorrect: true),
        Answer(answerText: 'Gence', isCorrect: false),
        Answer(answerText: 'Lenkeran  ', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Azerbaycan'ın ulusal bayrağı hangi renklerden oluşur?",
      [
        Answer(answerText: ' Mavi ve sari ', isCorrect: false),
        Answer(answerText: ' Kirmizi ve beyaz', isCorrect: false),
        Answer(answerText: 'Yesil ve siyah', isCorrect: false),
        Answer(answerText: 'Mavi ve beyaz  ', isCorrect: true),
      ],
    ),
  );
  list.add(
    Question(
      "Azerbaycan, hangi kıtada bulunur?",
      [
        Answer(answerText: ' Avrupa ', isCorrect: false),
        Answer(answerText: ' Asya', isCorrect: true),
        Answer(answerText: 'Afrika', isCorrect: false),
        Answer(answerText: 'Okyanusya  ', isCorrect: false),
      ],
    ),
  );
  list.add(
    Question(
      "Hangi şair Azerbaycan'ın en büyük şairlerinden biridir ve 'Leyli ve Mecnun' adlı eseriyle tanınır?",
      [
        Answer(answerText: ' Nizami Ganjavi ', isCorrect: true),
        Answer(answerText: ' Fuzûlî', isCorrect: false),
        Answer(answerText: 'Nesimi', isCorrect: false),
        Answer(answerText: 'Vagif  ', isCorrect: false),
      ],
    ),
  );
  return list;
}
