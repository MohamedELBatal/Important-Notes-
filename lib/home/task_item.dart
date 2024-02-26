import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
      ),
      child: Slidable(
        startActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.red,
              autoClose: true,
              icon: Icons.delete,
              spacing: 12,
              label: "Delete",
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
            ),
            SlidableAction(
                onPressed: (context) {},
                backgroundColor: Colors.blue,
                autoClose: true,
                icon: Icons.edit,
                spacing: 12,
                label: "Edit"),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 80,
                width: 8,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task Title",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 25),
                    ),
                    Text("Task Description"),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
