import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificatinProvider
{
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  initNotifications()
  {
    _firebaseMessaging.requestNotificationPermissions();

    _firebaseMessaging.getToken().then((token)
    {
      print("==== FCM token ====");
      print(token);

      //dBEx7pHR6JI:APA91bE7rlvTC6QAH5eFON-eMB84oxVISEEk5q6LQBepIqf3EWUVpHKvJb4ATTWaxnf0OR_PpWpZQJn1-vT0jaPIwm-5QSH6C4EfvsmNtzzA3ZCn76w1KcqY6aTk-CGf0N3EuSE23j8V
      //
    });

    /*_firebaseMessaging.configure(
      onMessage: (info) async {
        print("===== On Message =====");
        print(info);
      },
      onLaunch: (info) async {
        print("===== On Launch =====");
        print(info);
      },
      onResume: (info) async {
        print("===== On Resume =====");
        print(info);

        final noti = info['data']['comida'];

        print(noti);
      }
    );*/
  }
}