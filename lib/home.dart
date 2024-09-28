import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

class colorbox extends StatefulWidget {
  const colorbox({super.key});

  @override
  State<colorbox> createState() => _colorboxState();
}

class _colorboxState extends State<colorbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Consumer<color4provider>(builder: (child, value, context) {
            return Expanded(
              child: Container(
                height: 100,
                decoration:
                    BoxDecoration(color: Colors.blue.withOpacity(value.value)),
                child: Column(
                  children: [
                    Slider(
                      min: 0,
                      max: 1.0,
                      value: value.value,
                      onChanged: (val) {
                        value.setValue(val);
                      },
                    )
                  ],
                ),
              ),
            );
          }),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Row(
              children: [
                Consumer<color1provider>(builder: (child, value, context) {
                  return Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.amber.withOpacity(value.value)),
                      child: Column(
                        children: [
                          Slider(
                            min: 0,
                            max: 1.0,
                            value: value.value,
                            onChanged: (val) {
                              value.setValue(val);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }),
                Consumer<color2provider>(builder: (child, value, context) {
                  return Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.orange.withOpacity(value.value)),
                      child: Column(
                        children: [
                          Slider(
                            min: 0,
                            max: 1.0,
                            value: value.value,
                            onChanged: (val) {
                              value.setValue(val);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }),
                Consumer<color3provider>(builder: (child, value, context) {
                  return Expanded(
                    child: Container(
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(value.value)),
                      child: Column(
                        children: [
                          Slider(
                            min: 0,
                            max: 1.0,
                            value: value.value,
                            onChanged: (val) {
                              value.setValue(val);
                            },
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
