import 'package:exam_app/Control_Panel_Pages/Insert/TextFaildAndElevatedButton.dart';
import 'package:exam_app/My_Providers_Pages/Questions_Provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../My_Providers_Pages/InsertProvider.dart';

class QuestionTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("Insert Subject"),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: Insert_Provider.subject_controller,
                decoration: InputDecoration(
                    label: Text("Enter Subject"),
                    prefixIcon: Icon(Icons.subject)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 200,
                  height: 40,
                  child: Visibility(
                      visible:
                          Provider.of<Insert_Provider>(context, listen: false)
                              .visible,
                      child: ElevatedButton(
                          onPressed: () {
                            Provider.of<Insert_Provider>(context, listen: false)
                                .addSubjects(
                                    Insert_Provider.subject_controller.text);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.add_task_sharp),
                              SizedBox(
                                width: 5,
                              ),
                              Text("add subject")
                            ],
                          )))),
              SizedBox(
                height: 40,
              ),
              Text("add Questions for asubject"),
              SizedBox(
                height: 20,
              ),
              FaildAndButton(Insert_Provider.question_controller,
                  Insert_Provider.subject_controller)
            ],
          ),
        ));
  }
}
