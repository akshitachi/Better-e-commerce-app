import 'package:flutter/material.dart';

class AfterSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Image.asset('assets/images/Group 1.png'),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'corporis voluptatem perspiciatis numquam, culpa quidem praesentium maxime quae. Animi, eos nesciunt. Et perferendis officiis quo quasi, sunt nesciunt labore tenetur',
                style: TextStyle(
                  color: Colors.grey,
                  wordSpacing: 2,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
