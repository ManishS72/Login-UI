import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
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

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Login UI"),
       centerTitle: true,
       flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red,Colors.orange],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          ),
        ),
       ),
      ),
      body: SingleChildScrollView(
        child: Container(
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
                  padding: EdgeInsets.only(top: 70),
                  child: Container(
                    width: double.infinity,
                    height: 520,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(11),
                            child: TextField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.amber,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                hintText: "Enter Email or Phone",
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

                        SizedBox(height:2),

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              keyboardType: TextInputType.emailAddress,
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
                                  borderSide: BorderSide(color: Colors.black),
                                ),
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
                        SizedBox(height:10),

                        TextButton(
                          onPressed: () {
                            print("Forget Password");
                          },
                          child: Text(
                            "Forget Password?",
                          ),
                        ),

                        SizedBox(height:10),

                        ElevatedButton(
                          onPressed: () {
                            String email = emailController.text;

                            String password = passwordController.text;

                            print("Your Email is = $email");
                            print("Your Password is = $password");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),

                        SizedBox(height:10),
                        Text(
                          "Continue with social media"
                        ),

                        SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(onPressed: (){
                                
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                              ),
                               child: Text(
                                "LinkedIn",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                               ),
                               ),
                          
                               ElevatedButton(onPressed: (){},
                               style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                               ),
                                child: Text(
                                  "Github",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                ),
                            ],
                          ),
                        ),

                        SizedBox(height:10),
                        TextButton(onPressed: (){}, 
                        child:Text(
                          "Dont't have an account? Sign Up",
                          style: TextStyle(
                            color: Colors.red,
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
      ),
    );
  }
}
