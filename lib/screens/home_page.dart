import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/screens/task_page.dart';
import 'package:todo_list_flutter/screens/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        width: double.infinity,
        //padding: const EdgeInsets.all(24.0),
        color: const Color(0xFFF6F6F6),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(24.0),
                      child: const Image(
                        image: AssetImage('assets/images/logo.png'),
                      ),
                    ),
                    const Expanded(
                      child: Text(
                        "Todo List",
                        style: TextStyle(
                            color: Color(0xFF211551),
                            fontWeight: FontWeight.bold,
                            fontSize: 42),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: ListView(
                  children: const [
                    TaskCard(title: "Task 1"),
                    TaskCard(title: "Task 2"),
                    TaskCard(title: "Task 3"),
                    TaskCard(title: "Task 4"),
                    TaskCard(title: "Task 5"),
                    TaskCard(title: "Task 6"),
                    TaskCard(title: "Task 7"),
                    TaskCard(title: "Task 8"),
                    TaskCard(title: "Task 9"),
                    TaskCard(title: "Task 10"),
                  ],
                ))
              ],
            ),
            Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TaskPage()));
                  },
                  child: Container(
                      margin: const EdgeInsets.all(20),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xFF7349FE)),
                      child: const Image(
                        image: AssetImage("assets/images/add_icon.png"),
                      )),
                ))
          ],
        ),
      ),
    ));
  }
}
