import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {

  final String title;
  const TaskCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0
      ),
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 20
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Color(0xFF211551),
                fontSize: 22.0,
                fontWeight: FontWeight.bold
            ),
          ),
          const Text(
            "Now, create the second screen. "
                "The title of the screen contains the title of the todo, "
                "and the body of the screen shows the description.",
            style: TextStyle(
              color: Color(0xFF211551),
            ),
          )
        ],
      )
    );
  }
}
