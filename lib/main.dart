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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.blue)),
      home: const MyHomePage(title: 'LogIn UI'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.deepOrange,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 30),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),

            SizedBox(height: 5),

            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Welcome Back",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 105),
                child: Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding:EdgeInsets.all(11),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email, color: Colors.amber),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Enter Your Email",
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(
                                  color: Colors.deepOrange,
                                  width: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 25),

                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Enter Your password here",
                               suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility_off),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_clock_outlined,
                                color: Colors.amber,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(11),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                              ),
                             
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 25),

                      ElevatedButton(
                        onPressed: () {
                          print("Forget Password");
                        },
                        child: Text(
                          "Forget Password",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),

                      SizedBox(height: 25),

                      ElevatedButton(
                        onPressed: () {
                          print("SuccessFull Login");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
