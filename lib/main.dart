import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rr_flutter6/botton_screen.dart';
import 'package:rr_flutter6/column_list.dart';
import 'package:rr_flutter6/listview.dart';
import 'package:rr_flutter6/listview_separated.dart';
import 'package:rr_flutter6/profile_page.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ButtonScreen(),
      routes: <RouteBase>[
        GoRoute(
          path: 'columnlist',
          builder: (context, state) => ColumnList(),
        ),
        // GoRoute(
        //   path: 'profile',
        //   builder: (context, state) => const ProfilePage(),
        // ),
        GoRoute(
          path: 'listview',
          builder: (context, state) => ListViewScreen(),
        ),
        GoRoute(
          path: 'listview_separated',
          builder: (context, state) => ListViewSeparatedScreen(),
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
