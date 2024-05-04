
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/test_widget.dart';

void main(){
  testWidgets("Test Widget", (widgetTester)async{
  await widgetTester.pumpWidget(
    const MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: TestWidget(),
      ),
    ),
  );

  final textFinder = find.text('Test Widget');
  expect(textFinder, findsOneWidget);

  await widgetTester.tap(textFinder);

  await widgetTester.pump();

  });
}