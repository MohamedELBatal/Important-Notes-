import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/home/task_item.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          height: 90,
          locale: "en",
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: Colors.blue,
          selectedTextColor: Colors.white,
          onDateChange: (date) {
            // New date selected
            // setState(() {
            //   _selectedValue = date;
            // });
          },
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index) {
            return const TaskItem();
          },
          itemCount: 10,
          ),
        ),
      ],
    );
  }
}
