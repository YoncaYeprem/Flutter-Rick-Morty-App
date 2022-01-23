import 'package:flutter/material.dart';
import 'package:rick_monty/components/home_title.dart';
import 'package:rick_monty/components/list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: const [
          HomeTitle(),
          Expanded(child: ListWidget()),
        ],
      )),
    );
  }
}
