import 'package:flutter/material.dart';

class MenuTitle extends StatelessWidget {
  final icon;
  final title;

  const MenuTitle({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }
}
