import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function()? selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Awnser 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
