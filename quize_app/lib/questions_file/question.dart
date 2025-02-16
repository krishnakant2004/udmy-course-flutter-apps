import 'dart:math';
var random=Random();

class QuizeQuestion {
    const QuizeQuestion(this.text,this.answer);
    final String text;
    final List<String> answer;
    List<String> get Shuffled_answer{
        List<String> list=List.from(answer);
        list.shuffle(random);
        return list;
    }
}