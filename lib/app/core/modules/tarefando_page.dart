import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class TarefandoPage extends StatelessWidget {
  final List<SingleChildWidget>? _bindings;
  final WidgetBuilder _page;

  const TarefandoPage({
    super.key,
    List<SingleChildWidget>? bindings,
    required WidgetBuilder page,
  }) : _bindings = bindings,
       _page = page;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:
          _bindings ??
          [
            Provider(
              create: (_) => Object(),
            ),
          ],
      child: Builder(
        builder: (context) => _page(context),
      ),
    );
  }
}
