import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_app/tasl_model.dart';

class FireBaseFunctions {
  static CollectionReference<TaskModel> getTaskCollection() {
    return FirebaseFirestore.instance
        .collection("Tasks")
        .withConverter<TaskModel>(
      fromFirestore: (snapshot, _) {
        return TaskModel.fromJson(snapshot.data()!);
      },
      toFirestore: (task, _) {
        return task.toJson();
      },
    );
  }

  static void addTask(TaskModel taskModel) {
    var collection = getTaskCollection();
    var docRef = collection.doc();
    docRef.set(taskModel);
  }
}
