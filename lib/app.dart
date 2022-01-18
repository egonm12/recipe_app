import 'package:flutter/material.dart';

import 'presentation/widgets/common/widget_view.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppController createState() => _AppController();
}

class _AppController extends State<App> {
  int counter = 0;

  @override
  Widget build(BuildContext context) => _AppView(this);

  void handleCounterPressed() => setState(() => counter += 1);
}

class _AppView extends WidgetView<App, _AppController> {
  const _AppView(_AppController state, {Key? key}) : super(state, key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${state.counter}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: state.handleCounterPressed,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
