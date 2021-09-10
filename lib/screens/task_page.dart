import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Row(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pop(true);
                      },
                      child: const Image(
                        image: AssetImage("assets/images/back_arrow_icon.png"),
                      ),
                    )
                  ),
                  const Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: "Enter Task Title",
                        border: InputBorder.none),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Color(0xFF211551)
                        ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
