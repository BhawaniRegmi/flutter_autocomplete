import 'package:flutter/material.dart';

class AutocompleteText extends StatelessWidget {
  const AutocompleteText({Key? key}) : super(key: key);
  static const List<String> data = <String>[
    'Adrian',
    'Axel',
    'jhonn',
    'bobcat',
    'chameleon',
    'Oliver',
    'William',
    'Ethan',
    'Everett',
    'Jayden',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return data.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
    );
  }
}
