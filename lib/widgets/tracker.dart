import 'package:flutter/material.dart';

class Tracker extends StatefulWidget {
  Tracker() : super();

  final String title = "Stepper Demo";

  @override
  TrackerState createState() => TrackerState();
}

class TrackerState extends State<Tracker> {
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('The order placed'),
      content: Text('Location\n01/20/21\n1:30'),
      state: StepState.complete,
      isActive: false,
    ),
    Step(
      title: Text('The order shipped'),
      content: Text('Location\n03/20/21\n2:15'),
      state: StepState.complete,
      isActive: false,
    ),
    Step(
      title: Text('The order out for delivery'),
      content: Text('Location\n06/20/21\n11:30'),
      isActive: true,
    ),
    Step(
      title: Text('The order delivered'),
      content: Text('Locationn\n06/20/21\n12:30'),
      isActive: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stepper(
        currentStep: this.current_step,
        steps: steps,
        type: StepperType.vertical,
        onStepTapped: (step) {
          setState(() {
            current_step = step;
          });
        },
        onStepContinue: () {
          setState(() {
            if (current_step < steps.length - 1) {
              current_step = current_step + 1;
            } else {
              current_step = 0;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (current_step > 0) {
              current_step = current_step - 1;
            } else {
              current_step = 0;
            }
          });
        },
      ),
    );
  }
}
