import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String hintext;
  final IconData? icon;

  const SearchField({super.key, required this.hintext, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.only(left: 10),
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: TextField(
          decoration: InputDecoration(
              suffixIcon: Icon(icon),
              border: InputBorder.none,
              hintText: hintext)),
    );
  }
}
