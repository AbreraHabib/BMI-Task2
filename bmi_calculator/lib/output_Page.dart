import 'package:bmi_calculator/Input_Page.dart';
import 'package:bmi_calculator/constant_material.dart';
import 'package:flutter/material.dart';
import 'ContainerCode.dart';

class OutputScreen extends StatelessWidget {
  OutputScreen(
      {required this.bmiResult,
      required this.bmivalue,
      required this.bmidescription});
  final String bmivalue;
  final String bmiResult;
  final String bmidescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "BMI Calculator Application",
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  "Your Result",
                  style: KTitleStyleS2,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ContainerCode(
              colors: activeColor,
              cardWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResult,
                    style: KTextStylenormal,
                  ),
                  Text(
                    bmivalue,
                    style: KNumStyle2,
                  ),
                  Text(
                    bmidescription,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPages(),
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    "ReCALCULATE YOUR BMI",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: kcontainerColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 80.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
