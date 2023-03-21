import 'package:basics/presentation/widget_examples/list/list_item.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> example = ['example', 'list', 'with', 'strings'];

    return Scaffold(
      appBar: AppBar(title: const Text('List View Example')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          itemCount: example.length,
          separatorBuilder: ((context, index) {
            return const SizedBox(
              height: 10,
            );
          }),
          itemBuilder: (context, index) {
            return ListItem(
              title: example[index],
              index: index,
            );
          },
        ),
      ),
    );
  }
}
