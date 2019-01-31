///
/// Created by NieBin on 2019/1/13
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com

import "package:flutter/material.dart";
import 'package:flutter_widgets/const/_const.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperState createState() => _StepperState();
}

class _StepperState extends State<StepperPage> {
  var _index = 0;

  Widget _simpleStep() => Container(
        color: RED,
        child: Stepper(
          steps: [
            Step(
              title: Text("Start"),
              content: Text("Before starting, we should create a page."),
            ),
            Step(
              title: Text("Constructor"),
              content: Text("Let's look at its construtor."),
            ),
          ],
        ),
      );

  Widget _steps() => Container(
        margin: EdgeInsets.only(top: 10),
        color: GREEN,
        child: Stepper(
          steps: [
            Step(
              title: Text("First"),
              subtitle: Text("This is our first article"),
              content: Text(
                  "In this article, I will tell you how to create a page."),
            ),
            Step(
                title: Text("Second"),
                subtitle: Text("Constructor"),
                content: Text("Let's look at its construtor."),
                state: StepState.editing,
                isActive: true),
            Step(
                title: Text("Third"),
                subtitle: Text("Constructor"),
                content: Text("Let's look at its construtor."),
                state: StepState.error),
          ],
        ),
      );

  Widget _typeStep() => Container(
        margin: EdgeInsets.only(top: 10),
        constraints: BoxConstraints.expand(height: 200),
        color: BLUE_LIGHT,
        child: Stepper(
          type: StepperType.horizontal,
          steps: [
            Step(
              title: Text("First"),
              content: Text("This is our first example."),
            ),
            Step(
              title: Text("Second"),
              content: Text("This is our second example."),
            ),
          ],
        ),
      );

  Widget _tabStep() => Container(
        margin: EdgeInsets.only(top: 10),
        color: PURPLE,
        child: Stepper(
          steps: [
            Step(
              title: Text("First"),
              content: Text("This is our first example."),
            ),
            Step(
              title: Text("Second"),
              content: Text("This is our second example."),
            ),
            Step(
              title: Text("Third"),
              content: Text("This is our third example."),
            ),
            Step(
              title: Text("Forth"),
              content: Text("This is our forth example."),
            ),
          ],
          currentStep: _index,
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          onStepCancel: () {
            print("You are clicking the cancel button.");
          },
          onStepContinue: () {
            print("You are clicking the continue button.");
          },
        ),
      );

  Widget _builderStep() => Container(
        margin: EdgeInsets.only(top: 10),
        color: RED,
        child: Stepper(
          steps: [
            Step(
              title: Text("First"),
              content: Text("This is our first example."),
            ),
            Step(
              title: Text("Second"),
              content: Text("This is our second example."),
            ),
            Step(
              title: Text("Third"),
              content: Text("This is our third example."),
            ),
            Step(
              title: Text("Forth"),
              content: Text("This is our forth example."),
            ),
          ],
          currentStep: _index,
          onStepTapped: (index) {
            setState(() {
              _index = index;
            });
          },
          controlsBuilder: (BuildContext context,
                  {VoidCallback onStepContinue, VoidCallback onStepCancel}) =>
              Container(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(PageName.STEPPER),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //our code.
              _simpleStep(),
              _steps(),
              _typeStep(),
              _tabStep(),
              _builderStep(),
              SizedBox(height: 600)
            ],
          ),
        ));
  }
}

//Stepper(
//steps: [
//Step(
//title: Text("Start"),
//content: Text(
//"Before start, we should create a page to contain our page."),
//),
//Step(
//title: Text("Construtor"),
//content:
//Text("Flutter open is a community that help people to learn."),
//),
//],
//type: StepperType.vertical,
//currentStep: _index,
//onStepTapped: (index) {
//setState(() {
//_index = index;
//});
//},
//controlsBuilder: (BuildContext context,
//{VoidCallback onStepContinue, VoidCallback onStepCancel}) {
//return Container();
//},
//),
