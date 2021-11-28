import 'package:flutter/material.dart';
import 'package:organizer/src/screens/weekly_todo.dart';
import 'package:organizer/src/settings/settings_view.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold(
      {Key? key, required this.name, required this.body, this.buttonTopRight})
      : super(key: key);
  final String name;
  final Widget body;
  final FloatingActionButton? buttonTopRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 30),
            ListTile(
              title: const Text("ToDo's"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Weekly ToDo's"),
              onTap: () {
                Navigator.restorablePushNamed(
                    context, WeeklyTodoScreen.routeName);
              },
            ),
            ListTile(
              title: const Text("Einstellungen"),
              onTap: () {
                Navigator.restorablePushNamed(context, SettingsView.routeName);
              },
            )
          ],
        ),
      ),
      floatingActionButton: buttonTopRight ?? buttonTopRight,
      appBar: AppBar(
        title: Text(name),
      ),
      body: body,
    );
  }
}
