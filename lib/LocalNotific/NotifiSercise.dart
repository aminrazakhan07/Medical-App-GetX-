import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotifiService {
  final notificationPlugin = FlutterLocalNotificationsPlugin();

  final bool _isInitialized = false;

  bool get isInitialized => _isInitialized;

  // initialize
  Future<void> initNotification() async {
    if (_isInitialized) return;

    /// Android init settings
    const initSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    //// ios init settings
    const initSettingIOS = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestSoundPermission: true,
      requestBadgePermission: true,
    );

    /// Both Notifi Settings
    const initSettings = InitializationSettings(
      android: initSettingsAndroid,
      iOS: initSettingIOS,
    );
    //// finally, initializ plugin
    await notificationPlugin.initialize(initSettings);
  }

///// Notification Detail Setup
  NotificationDetails notificationDetails() {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_channel_id',
        'Daily Notifications',
        channelDescription: 'Daily Notification',
        importance: Importance.max,
        priority: Priority.high,
      ),
      //
      iOS: DarwinNotificationDetails(),
    );
  }

//// Show Notification
  Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
  }) async {
    return notificationPlugin.show(
      id,
      title,
      body,
      NotificationDetails(),
    );
  }
}
