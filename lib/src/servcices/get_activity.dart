// import 'package:flutter/material.dart';
//
// class AppSystemManager extends StatefulWidget {
//   final Widget child;
//   const AppSystemManager({Key key, this.child}) : super(key: key);
//
//   @override
//   _AppSystemManagerState createState() => _AppSystemManagerState();
// }
//
// class _AppSystemManagerState extends State<AppSystemManager>
//     with WidgetsBindingObserver {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance!.addObserver(this);
//   }
//
//   @override
//   void dispose() {
//     WidgetsBinding.instance!.removeObserver(this);
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return widget.child;
//   }
//
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     switch (state) {
//       case AppLifecycleState.inactive:
//         print('inactive');
//         break;
//       case AppLifecycleState.paused:
//         print('paused');
//         break;
//       case AppLifecycleState.resumed:
//         print('resumed');
//         break;
//       case AppLifecycleState.detached:
//         print('detached');
//         break;
//       default:
//     }
//   }
// }
