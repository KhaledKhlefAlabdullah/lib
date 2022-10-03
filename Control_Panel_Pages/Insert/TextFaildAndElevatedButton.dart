import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../My_Providers_Pages/InsertProvider.dart';
import '../../My_Providers_Pages/Questions_Provider.dart';

class FaildAndButton extends StatelessWidget {
  var quesControl;
  var subControl;
  FaildAndButton(quesControl, subControl) {
    this.quesControl = quesControl;
    this.subControl = subControl;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextField(
          controller: quesControl,
          decoration: InputDecoration(
              label: Text("Enter Question"),
              prefixIcon: Icon(Icons.question_answer)),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            width: 200,
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  Provider.of<Insert_Provider>(context, listen: false)
                      .addQuestions(quesControl.text, subControl.text);
                  Provider.of<Questions_Provider>(context, listen: false)
                      .getQuestions();
                },
                child: Row(
                  children: [
                    Icon(Icons.add_box_sharp),
                    SizedBox(
                      width: 5,
                    ),
                    Text("add Question")
                  ],
                )))
      ],
    ));
  }
}
