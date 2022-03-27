import 'package:final_07610480/pages/Data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  final int qIndex;

  const HomePage2({Key? key, required this.qIndex}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  late int _qIndex;

  @override
  @override
  void initState() {
    super.initState();
    _qIndex = widget.qIndex;
  }

  Widget build(BuildContext context) {
    var quizItem = Data.list[_qIndex];
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                aspectRatio: 1.7,
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Image.network(
                    quizItem.image_url,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              for(int i=1;i<Data.list.length;i++)
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    '${quizItem.choice_list.toString()}',
                    style: TextStyle(fontSize: 30.0),
                  ),
                )
            ],
          )
        ],
      ),
    );
  }
}