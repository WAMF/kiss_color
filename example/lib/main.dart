import 'package:example/schemes.dart';
import 'package:flutter/material.dart';
import 'package:kiss_color/kiss_color.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SemanticColors(
          data: chillColors,
          child: const Center(
            child: ColorDemo(),
          ),
        ),
      ),
    );
  }
}

class ColorDemo extends StatelessWidget {
  const ColorDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = SemanticColors.of(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        spacing: 8,
        children: [
          colors.visualizer('Semantic Colors Example'),
          // a wrap of a few example widgets with the theme
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Theme(
                  data: colors.data.theme,
                  child: Column(
                    spacing: 8,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Theme Example'),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Hello'),
                            ),
                          ),
                          Slider(value: 0.5, onChanged: (value) {}),
                          TextField(
                              decoration: InputDecoration(labelText: 'Name')),
                          Column(
                            spacing: 8,
                            children: [
                              Text('Button'),
                              ElevatedButton(
                                  onPressed: () {}, child: Text('Press me')),
                              OutlinedButton(
                                  onPressed: () {}, child: Text('Press me')),
                              TextButton(
                                  onPressed: () {}, child: Text('Press me')),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ],
                          ),
                          Column(
                            spacing: 8,
                            children: [
                              Text('Button'),
                              ElevatedButton(
                                onPressed: null,
                                child: Text('Press me'),
                              ),
                              OutlinedButton(
                                  onPressed: null, child: Text('Press me')),
                              TextButton(
                                  onPressed: null, child: Text('Press me')),
                              IconButton(
                                  onPressed: null, icon: Icon(Icons.add)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Switch'),
                              Switch(value: true, onChanged: (value) {}),
                              Switch(value: false, onChanged: (value) {}),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Checkbox'),
                              Checkbox(value: true, onChanged: (value) {}),
                              Checkbox(value: false, onChanged: (value) {}),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Radio'),
                              Radio(
                                  value: true,
                                  groupValue: true,
                                  onChanged: (value) {}),
                              Radio(
                                  value: false,
                                  groupValue: true,
                                  onChanged: (value) {}),
                            ],
                          ),
                          Chip(label: Text('Chip'), onDeleted: () {}),
                          Container(
                            color: colors.data.primary.background,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Hello'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
