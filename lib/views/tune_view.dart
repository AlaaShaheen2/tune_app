import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xfff44336), sound: 'note1.wav'),
    TuneModel(color: Colors.orange, sound: 'note2.wav'),
    TuneModel(color: Colors.yellow, sound: 'note3.wav'),
    TuneModel(color: Colors.green, sound: 'note4.wav'),
    TuneModel(color: Colors.blue, sound: 'note5.wav'),
    TuneModel(color: Colors.pinkAccent, sound: 'note6.wav'),
    TuneModel(color: Colors.purple, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff243238),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Flutter Tune',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        body: Column(
          children: tunes
              .map(
                (e) => TuneItem(tune: e),
              )
              .toList(),
        ));
  }
}
