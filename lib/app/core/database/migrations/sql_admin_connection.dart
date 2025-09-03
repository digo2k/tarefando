import 'package:flutter/widgets.dart';
import 'package:tarefando/app/core/database/sqlite_connection_factory.dart';

class SqlAdminConnection with WidgetsBindingObserver {
  final connection = SqliteConnectionFactory();

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        connection.closeConnection();
        break;
      case AppLifecycleState.hidden:
        throw UnimplementedError();
    }
  }
}
