import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final void Function(CurrencyModel? model) onChanged;
  final TextEditingController controller;
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;

  const CurrencyBox(
      {super.key,
      required this.items,
      required this.controller,
      required this.onChanged,
      required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<CurrencyModel>(
              value: selectedItem,
              underline: Container(height: 1, color: Colors.amber),
              onChanged: onChanged,
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              items: items
                  .map((item) => DropdownMenuItem(
                        value: item,
                        child: Text(item.name),
                      ))
                  .toList(),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
            flex: 2,
            child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.amber))))),
      ],
    );
  }
}
