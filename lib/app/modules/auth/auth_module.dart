import 'package:provider/provider.dart';
import 'package:tarefando/app/core/modules/tarefando_module.dart';
import 'package:tarefando/app/modules/auth/login/login_controller.dart';
import 'package:tarefando/app/modules/auth/login/login_page.dart';

class AuthModule extends TarefandoModule {
  AuthModule()
    : super(
        bindings: [
          ChangeNotifierProvider(
            create: (_) => LoginController(),
          ),
        ],
        routers: {
          '/login': (context) => LoginPage(),
        },
      );
}
