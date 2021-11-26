import 'package:flutter/material.dart';

import 'main_appbar.dart';
import 'main_body.dart';
import 'main_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _size = 100;
  int get size => _size;
  set size(value) => setState(() => _size = value);

  int _red = 0;
  get red => _red;
  set red(value) => setState(() => _red = value);

  int _green = 0;
  get green => _green;
  set green(value) => setState(() => _green = value);

  int _blue = 255;
  get blue => _blue;
  set blue(value) => setState(() => _blue = value);

  bool _allowresize = true;
  get allowresize => _allowresize;
  set allowresize(value) => setState(() => _allowresize = value);

  bool _allowcolor = true;
  get allowcolor => _allowcolor;
  set allowcolor(value) => setState(() => _allowcolor = value);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar(state: this),
        body: MainBody(state: this),
        bottomNavigationBar: MainBottomBar(state: this),
        drawer: Drawer(
          child: ListView(
            itemExtent: 50.0,
            padding: EdgeInsets.zero,
            children: [
              CheckboxListTile(
                title: Text('Allow resize?'),
                value: allowresize,
                onChanged: (value) {
                  if (value)
                    allowresize = true;
                  else
                    allowresize = false;
                },
              ),
              Divider(),
              CheckboxListTile(
                title: Text('Allow change primer color?'),
                value: allowcolor,
                onChanged: (value) {
                  if (value)
                    allowcolor = true;
                  else
                    allowcolor = false;
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
