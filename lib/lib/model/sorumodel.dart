class ProductDataModel {
  //data Type
  String question;
  String answer1;
  String cevap1;
  String answer2;
  String cevap2;
  String answer3;
  String cevap3;
  String answer4;
  String cevap4;
  String answer5;
  String cevap5;

// constructor
  ProductDataModel({
    this.question,
    this.answer1,
    this.cevap1,
    this.answer2,
    this.cevap2,
    this.answer3,
    this.cevap3,
    this.answer4,
    this.cevap4,
    this.answer5,
    this.cevap5,
  });

  //method that assign values to respective datatype vairables
  ProductDataModel.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    answer1 = json['answer1'];
    cevap1 = json['cevap1'];
    answer2 = json['answer2'];
    cevap2 = json['cevap2'];
    answer3 = json['answer3'];
    cevap3 = json['cevap3'];
    answer4 = json['answer4'];
    cevap4 = json['cevap4'];
    answer5 = json['answer5'];
    cevap5 = json['cevap5'];
  }
}
