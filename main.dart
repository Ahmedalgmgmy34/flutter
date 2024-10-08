import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 6, 69, 241)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter 1Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  var sb='سبحان الله';
  var as= 'استغفر الله';
  var al ='الحمد لله';
  var tit="اذكر الله";
  int conter =0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      tit=as;
      conter=_counter;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
      tit=sb;
      conter=_counter2;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter3++;
      tit=al;
      conter=_counter3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Center(
          child: Text(
            "السبحة الالكترونية ",
            textAlign: TextAlign.right,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text(
              "$tit",
              style: TextStyle(
                color: Color.fromARGB(255, 7, 76, 204), // اللون الأبيض
                fontSize: 18,
              ),
            ),
            Text(
              '$conter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Container(
              height: 70,
            ),
           










            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _incrementCounter();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text(
                    "استغفر الله",
                    style: TextStyle(
                      color: Colors.white, // اللون الأبيض
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _incrementCounter2();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text(
                    "سبحان الله",
                    style: TextStyle(
                      color: Colors.white, // اللون الأبيض
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    _incrementCounter3();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  child: const Text(
                    "الحمد لله",
                    style: TextStyle(
                      color: Colors.white, // اللون الأبيض
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
