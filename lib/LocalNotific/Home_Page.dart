import 'package:flutter/material.dart';
import 'package:medical_getx_app/LocalNotific/NotifiSercise.dart';

class HomeNotification extends StatefulWidget {
  const HomeNotification({super.key});

  @override
  State<HomeNotification> createState() => _HomeNotificationState();
}

class _HomeNotificationState extends State<HomeNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Home Notification'),
          ),
          SizedBox(height: 20),
          //
          ElevatedButton(
            onPressed: () {
              NotifiService().showNotification(
                title: 'Title',
                body: 'Body',
              );
            },
            child: Text('Send Notification'),
          )
        ],
      ),
    );
  }
}
