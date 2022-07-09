import 'package:flutter/material.dart';
import 'package:music_player/authentication/sign_in.dart';
import 'package:music_player/constants/colours.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: SignInColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                CircleAvatar(
                  radius: 35,
                  child: Image.asset('logo.png'),
                  backgroundColor: BackButtonColor,
                ),
                SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: HighlightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      const Text(
                        'Username',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextField(
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                            hintText: 'Enter username',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.white70)),
                      ),
                      SizedBox(height: 40),
                      const Text(
                        'Email',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextField(
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                            hintText: 'Enter email',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.white70)),
                      ),
                      SizedBox(height: 40),
                      const Text(
                        'Password',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextField(
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                            hintText: 'Enter password',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.white70)),
                      ),
                      SizedBox(height: 40),
                      const Text(
                        'Confirm Password',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      TextField(
                        cursorColor: Colors.white,
                        decoration: const InputDecoration(
                            hintText: 'Confirm password',
                            hintStyle:
                                TextStyle(fontSize: 15, color: Colors.white70)),
                      ),
                      SizedBox(height: 35),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: SignUpColor,
                            minimumSize: const Size.fromHeight(60),
                            elevation: 0,
                          ),
                          child: Text(
                            'Create Account',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 15),
                      Center(
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.g_mobiledata_sharp),
                          style: ElevatedButton.styleFrom(
                            primary: HighlightColor,
                            minimumSize: const Size.fromHeight(60),
                            side: BorderSide(width: 1, color: Colors.white70),
                            elevation: 2,
                          ),
                          label: Text(
                            'Sign Up with Google',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(child: buildSignUpBtn()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignIn()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Have an account?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              )),
          TextSpan(
              text: ' Sign In',
              style: TextStyle(
                color: BackButtonColor,
                fontSize: 15,
              ))
        ]),
      ),
    );
  }
}
