import 'package:flutter/material.dart';
import 'package:todo_app/home/tabs/settings_tab.dart';
import 'package:todo_app/home/tabs/task_tab.dart';

import 'add_task_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFFDFECDB),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "ToDo",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child:  const AddTaskBottomSheet());
            },
          );
        },
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(width: 3, color: Colors.white),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        height: 89,
        child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey.shade400,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 30,
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.task,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                  ),
                  label: ""),
            ]),
      ),
      body: tabs[index],
    );
  }

  List<Widget> tabs = [
    const TasksTab(),
    const SettingsTab(),
  ];
}
