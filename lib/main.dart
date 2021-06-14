import 'package:flutter/material.dart';
import 'component/notification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(child: NotificationItem());
}
