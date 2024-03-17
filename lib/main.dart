import 'package:flutter/material.dart';

void main() {
  runApp(const ButtonTypes());
}

class ButtonTypes extends StatelessWidget {
  const ButtonTypes({super.key});

  @override
  Widget build(BuildContext context) {
    String? chosenValue = null;
    String selectValue = 'one';
    List<String> numbers = [
      'one',
      'two',
      'three',
      'four',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('types of Buttons         By: SaMiM Salek')),
        body: Container(
          child: Center(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Text Button',
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.grade),
                      label: Text('Text button with icon'),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Elevatad Button'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.grade),
                      label: Text('Elevatad Button With Icon'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text('Outlined Button'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      label: Text('Outlined Button With Icon'),
                      icon: Icon(Icons.grade),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: DropdownButton<String>(
                      hint: Text('DropDown Buttons'),
                      items: [
                        DropdownMenuItem(
                          child: Text('one'),
                          value: ('1'),
                        ),
                        DropdownMenuItem(
                          child: Text('two'),
                          value: ('2'),
                        ),
                        DropdownMenuItem(
                          child: Text('three'),
                          value: ('3'),
                        ),
                        DropdownMenuItem(
                          child: Text('four'),
                          value: ('4'),
                        ),
                      ],
                      value: chosenValue,
                      onChanged: (String? newValue) {
                        chosenValue = newValue!;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: PopupMenuButton<String>(
                        onSelected: (String number) {
                          selectValue = number;
                        },
                        child: (Text('PopupButtons')),
                        itemBuilder: (BuildContext context) {
                          return numbers
                              .map((String number) => PopupMenuItem(
                                    child: Text(number),
                                    value: number,
                                  ))
                              .toList();
                          // <PopupMenuEntry<String>>[
                          //   PopupMenuItem(
                          //     child: Text('one'),
                          //     value: 'one',
                          //   ),
                          //   PopupMenuItem(
                          //     child: Text('two'),
                          //     value: 'two',
                          //   ),
                          //   PopupMenuItem(
                          //     child: Text('three'),
                          //     value: 'three',
                          //   ),
                          //   PopupMenuItem(
                          //     child: Text('four'),
                          //     value: 'four',
                          //   ),
                          // ];
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
