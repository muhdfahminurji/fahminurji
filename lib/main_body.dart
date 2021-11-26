import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final state;
  MainBody({this.state});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        Icons.alarm,
        size: state.size,
        color: Color.fromRGBO(state.red, state.green, state.blue, 1),
      ),
    );
  }
}
