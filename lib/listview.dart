import 'package:flutter/material.dart';
import 'package:rr_flutter6/app_env.dart';
import 'package:rr_flutter6/update_button.dart';

class ListViewScreen extends StatefulWidget {
  @override
  _ListViewScreenState createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
        actions: [
          // IconButton(
          //   onPressed: () {
          //     setState(() {
          //       AppEnv.myList.removeAt(AppEnv.myList.length - 1);
          //     });
          //   },
          //   icon: const Icon(Icons.delete),
          // ),
          UpdateButton(
              state: this,
              icon: const Icon(Icons.delete),
              callback: () {
                (AppEnv.myList.length > 0)
                    ? AppEnv.myList.removeAt(AppEnv.myList.length - 1)
                    : null;
              }),
          UpdateButton(
              state: this,
              icon: const Icon(Icons.add),
              callback: () {
                AppEnv.myList.add(AppEnv.myList.length);
                try {
                  _scrollController.animateTo(
                    _scrollController.position.maxScrollExtent + 50,
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.ease,
                  );
                } catch (e) {}
              }),
        ],
      ),
      body: Center(
        child: AppEnv.myList.isEmpty
            ? const Text('Empty')
            : ListView.builder(
                padding: const EdgeInsets.all(8),
                controller: _scrollController,
                itemCount: AppEnv.myList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item ${AppEnv.myList[index]}'),
                  );
                },
              ),
      ),
    );
  }
}
