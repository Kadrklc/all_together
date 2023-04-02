import 'package:all_together/components/my_button.dart';
import 'package:all_together/components/my_textfield.dart';
import 'package:all_together/components/square_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutterdemo',
      home: myhomepage(),
    );
  }
}

class myhomepage extends StatelessWidget {
  myhomepage({super.key});
  // Text edit controller
  final usernameController = TextEditingController();
  final passwordcontroller = TextEditingController();

  //sign user
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              //welcomeback
              Text(
                'Welcome Back Mate been missed <3 ',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              //username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password
              MyTextField(
                controller: passwordcontroller,
                hintText: 'Possword',
                obscureText: true,
              ),
              //forgot Password
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              //signin button
              const SizedBox(height: 25),
              MyButton(onTap: signUserIn),

              const SizedBox(height: 50),

              // Continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or Continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  //google
                  SquareTile(imagePath: 'lib/images/google.png'),

                  //apple
                  SquareTile(imagePath: 'lib/images/apple.png'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
