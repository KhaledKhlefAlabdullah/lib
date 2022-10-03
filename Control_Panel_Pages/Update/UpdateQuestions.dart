import 'package:exam_app/Control_Panel_Pages/Insert/TextFaildAndElevatedButton.dart';
import 'package:exam_app/My_Providers_Pages/InsertProvider.dart';
import 'package:flutter/material.dart';

class UpdateQuestion extends StatelessWidget {
  var id;
  var quesControl;
  var SubContrpl;
  UpdateQuestion(Id, quesControl, SubContrpl) {
    id = Id;
    Insert_Provider.question_controller.text = quesControl;
    Insert_Provider.subject_controller.text = SubContrpl;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          // I have to edit this widget and add sum varibls to editin his Contans
          child: FaildAndButton(Insert_Provider.question_controller,
              Insert_Provider.subject_controller)),
    );
  }
}
