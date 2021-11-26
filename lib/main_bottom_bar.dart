import 'package:flutter/material.dart';

class MainBottomBar extends StatelessWidget {
  final state;

  MainBottomBar({this.state});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Slider(
              min: 0,
              max: 255,
              value: state.red,
              onChanged: (value) => state.red = value.round(),
            )),
            if (state.allowcolor)
              FloatingActionButton(
                onPressed: () {
                  state.red = 255;
                  state.green = 0;
                  state.blue = 0;
                },
                backgroundColor: Colors.red,
                child: Text('${state.red}'),
              )
            else
              Text('${state.red}')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Slider(
              min: 0,
              max: 255,
              value: state.green,
              onChanged: (value) => state.green = value.round(),
            )),
            if (state.allowcolor)
              FloatingActionButton(
                onPressed: () {
                  state.red = 0;
                  state.green = 255;
                  state.blue = 0;
                },
                backgroundColor: Colors.green,
                child: Text('${state.green}'),
              )
            else
              Text('${state.green}')
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Slider(
              min: 0,
              max: 255,
              value: state.blue,
              onChanged: (value) => state.blue = value.round(),
            )),
            if (state.allowcolor)
              FloatingActionButton(
                onPressed: () {
                  state.red = 0;
                  state.green = 0;
                  state.blue = 255;
                },
                backgroundColor: Colors.blue,
                child: Text('${state.blue}'),
              )
            else
              Text('${state.blue}')
          ],
        ),
      ]),
    );
  }
}
