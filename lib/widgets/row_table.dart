// Return a data table with  eg. Action - 2.9

import 'package:flutter/material.dart';

class RowTable extends StatelessWidget {
  final String? action;
  final String? value;
  const RowTable({super.key, this.action, this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                action!,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              Text(
                value!,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
          
        ),
        Divider(),
      ],
    );
  }
}