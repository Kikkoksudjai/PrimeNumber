/*
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/


//--ex coding #2

/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _message = 'Hello, Flutter!';

  void _changeMessage() {
    setState(() {
      _message = 'Button Pressed!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Button Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _message,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeMessage,
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
*/

//-- coding #3


/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Number Checker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeChecker(),
    );
  }
}

class PrimeChecker extends StatefulWidget {
  @override
  _PrimeCheckerState createState() => _PrimeCheckerState();
}

class _PrimeCheckerState extends State<PrimeChecker> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  // Function to check whether the number is prime or not
  bool isPrime(int number) {
    if (number <= 1) return false; // Numbers less than or equal to 1 are not prime
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false; // If divisible by any number, it's not prime
    }
    return true;
  }

  // Handle the button press to check if the number is prime
  void _checkPrime() {
    final input = _controller.text;
    if (input.isEmpty) {
      setState(() {
        _result = 'Please enter a number';
      });
      return;
    }

    final number = int.tryParse(input);
    if (number == null || number < 1) {
      setState(() {
        _result = 'Please enter a valid positive integer starting from 1';
      });
    } else {
      setState(() {
        _result = isPrime(number) ? 'It is a prime number' : 'It is not a prime number';
      });
    }
  }

  // Clear the input field and result
  void _clear() {
    setState(() {
      _controller.clear();
      _result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prime Number Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkPrime,
              child: Text('Check if Prime'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _clear,
              child: Text('Clear'),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _result.startsWith('It is prime') ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/




//-- add computing time millisec

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prime Number Checker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeChecker(),
    );
  }
}

class PrimeChecker extends StatefulWidget {
  const PrimeChecker({super.key});

  @override
  _PrimeCheckerState createState() => _PrimeCheckerState();
}

class _PrimeCheckerState extends State<PrimeChecker> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';
  String _timeTaken = ''; // ตัวแปรใหม่เพื่อเก็บเวลาที่ใช้ในการคำนวณ

  // Function to check whether the number is prime or not
  bool isPrime(int number) {
    if (number <= 1) return false; // Numbers less than or equal to 1 are not prime
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false; // If divisible by any number, it's not prime
    }
    return true;
  }

  // Handle the button press to check if the number is prime
  void _checkPrime() {
    final input = _controller.text;
    if (input.isEmpty) {
      setState(() {
        _result = 'Please enter a number';
        _timeTaken = '';
      });
      return;
    }

    final number = int.tryParse(input);
    if (number == null || number < 1) {
      setState(() {
        _result = 'Please enter a valid positive integer starting from 1';
        _timeTaken = '';
      });
    } else {
      // บันทึกเวลาเริ่มต้น
      final startTime = DateTime.now();

      setState(() {
        // ตรวจสอบว่าเป็น prime number หรือไม่
        _result = isPrime(number) ? 'It is prime number' : 'It is not prime number';
        
        // บันทึกเวลาเสร็จสิ้น
        final endTime = DateTime.now();
        
        // คำนวณเวลาในหน่วย millisecond
        final duration = endTime.difference(startTime);
        _timeTaken = '${duration.inMilliseconds} milliseconds'; // ใช้ milliseconds ตรงๆ
      });
    }
  }

  // Clear the input field and result
  void _clear() {
    setState(() {
      _controller.clear();
      _result = '';
      _timeTaken = ''; // เคลียร์เวลาเมื่อกดปุ่ม Clear
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prime Number Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter a number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkPrime,
              child: const Text('Check if Prime'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _clear,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Clear'),
            ),
            const SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: _result.startsWith('It is prime') ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            // แสดงเวลาที่ใช้ในการคำนวณ
            if (_timeTaken.isNotEmpty)
              Text(
                'Time taken: $_timeTaken',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

