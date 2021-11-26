import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final state;

  MainAppBar({this.state});

  @override
  Size get preferredSize => Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('My Icon', style: TextStyle(fontSize: 30.0)),
      actions: [
        if (state.allowresize)
          IconButton(
              onPressed: () {
                if (state.size > 50) {
                  state.size -= 50;
                }
              },
              icon: Icon(Icons.remove_circle_outline, color: Colors.white)),
        if (state.allowresize)
          IconButton(
            onPressed: () {
              state.size = 100;
            },
            icon: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 20,
              height: 20,
              child: Text(
                'S',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        if (state.allowresize)
          IconButton(
            onPressed: () {
              state.size = 300;
            },
            icon: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 20,
              height: 20,
              child: Text(
                'M',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        if (state.allowresize)
          IconButton(
            onPressed: () {
              state.size = 500;
            },
            icon: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 20,
              height: 20,
              child: Text(
                'L',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        if (state.allowresize)
          IconButton(
              onPressed: () {
                if (state.size < 500) {
                  state.size += 50;
                }
              },
              icon: Icon(Icons.add_circle_outline, color: Colors.white)),
      ],
    );
  }
}
