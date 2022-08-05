// import-
// material- тиркеме жасоодо ар кандай виджеттер менен камсыздайт.
// package- пакет,топтом.
import 'package:flutter/material.dart';

// void-боштук
// main-тикемени ишке киргизип,колдонуучуга көрүнүшүн камсыздайт.
void main() {
  // runApp-функциясы нөл коопсуздук,тиркемени экранга алып чыгып берет.
  // const-ачкыч сөз,өзгөрмөнүн мааниси компиляция убагында белгилүү болгондо жана эч качан өзгөрбөсө колдонулат.
  // MyApp-менин тиркемем
  runApp(const MyApp());
}
// class-ачкыч сөз,идентификатор боло албайт
// extends-ачкыч соз.Классты мурастап же кеңейте аласыз.Бул сизге окшош,бирок так окшош эмес класстар арасында касиеттерди жана ыкмаларды бөлүшүүгө мүмкүндүк берет.
// StatelessWidget-жарандыгы жок.бул виджеттер колдонмо учурунда алардын касиеттерин өзгөртөпөйт .
class MyApp extends StatelessWidget {
  // const-ачкыч сөз,өзгөрмөнүн мааниси компиляция убагында белгилүү болуп,эч качан өзгөрбөсө колдонулат.
  // MyApp-менин тиркемем
  // Key-
  // super-
  const MyApp({Key? key}) : super(key: key);
 // @override-
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Counter1(),
    );
  }
}

class Counter1 extends StatefulWidget {
  const Counter1({Key? key}) : super(key: key);

  @override
  State<Counter1> createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {
  int san = 0;

  void koshuu() {
    san++;
    setState(() {});
    print(san);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter 1'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            '$san',
            style: const TextStyle(fontSize: 70),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: koshuu,
                child: const Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  san--;
                  print(san);
                  setState(() {});
                },
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Counter2(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Counter2 extends StatelessWidget {
  const Counter2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter 2'),
      ),
      body: const Center(
        child: Text(
          '0',
          style: TextStyle(fontSize: 70),
        ),
      ),
    );
  }
}