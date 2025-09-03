import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';
import 'package:tarefando/app/core/modules/tarefando_page.dart';

abstract class TarefandoModule {
  final Map<String, WidgetBuilder> _routers;
  final List<SingleChildWidget>? _bindings;

  TarefandoModule({
    required Map<String, WidgetBuilder> routers,
    List<SingleChildWidget>? bindings,
  }) : _routers = routers,
       _bindings = bindings;

  Map<String, WidgetBuilder> get routers {
    return _routers.map(
      (key, pageBuilder) => MapEntry(
        key,
        (context) => TarefandoPage(
          bindings: _bindings,
          page: pageBuilder,
        ),
      ),
    );
  }
}
