
class Quiz{
  final String image_url;
  final int answer;
  final dynamic choice_list;


  Quiz({
    required this.image_url,
    required this.answer,
    required this.choice_list,
});

 factory Quiz.fromJson(Map<String, dynamic> json){
   return Quiz(
       image_url: json['image_url'],
       answer: json['answer'],
       choice_list: json['choice_list'],
   );
 }
 Quiz.fromJson2(Map<String, dynamic> json)
  : image_url = json['image_url'],
    answer= json['answer'],
    choice_list= json['choice_list'];

    @override
   String toString(){
      return '$image_url: $choice_list คำตอบ $answer';
   }
 }
