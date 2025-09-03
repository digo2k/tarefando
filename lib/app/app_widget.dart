import 'package:flutter/material.dart';
import 'package:tarefando/app/core/database/migrations/sql_admin_connection.dart';
import 'package:tarefando/app/modules/auth/auth_module.dart';
import 'package:tarefando/app/modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqlAdmConnection = SqlAdminConnection();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqlAdmConnection);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(sqlAdmConnection);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefando',
      initialRoute: '/login',
      routes: {
        ...AuthModule().routers,
      },
      home: SplashPage(),
    );
  }
}
