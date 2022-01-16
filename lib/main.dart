import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Olympic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'PIG WEIGHT',
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Text(
                    'CALCULATOR',
                    style: TextStyle(
                      fontSize: 36.0,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.all(15)),
                  Image.asset(
                    'assets/images/pig.png',
                    width: 350,
                  ),
                  Padding(padding: const EdgeInsets.all(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 100.0,
                            child: Text(
                              'LENGTH\n   (cm)',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          /*TextField(
                            textAlign: TextAlign.center,
                            controller: _controller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.7),
                              border: OutlineInputBorder(),
                              hintText: 'ทายเลขตั้งแต่ 1 ถึง 100',
                            ),
                          )*/
                          Text(
                            '\nไม่สามารถสร้างTextField\nได้จึงสามารถทำได้เท่านี้'
                          ),
                        ],
                      ),
                      Padding(padding: const EdgeInsets.all(30)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[ SizedBox(
                          width: 100.0,
                          child: Text(
                            'LENGTH\n   (cm)',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                          Text(
                              '\nพยายามส่วนTextFieldมาาเกือบ\nสองชั่วโมงแล้วมันไม่แสดงผล'
                          ),
                       ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: const EdgeInsets.all(5)),
                        ElevatedButton(
                          child: Text('CALCULATOR'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
