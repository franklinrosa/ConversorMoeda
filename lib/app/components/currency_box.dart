import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 56,
              //width: ,
              child: DropdownButton(
                  iconEnabledColor: Colors.amber,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  items: const [
                    DropdownMenuItem(
                      child: Text('Real'),
                    ),

                    //DropdownMenuItem(child: Text('Real')),
                  ],
                  onChanged: (value) {}),
            )),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
