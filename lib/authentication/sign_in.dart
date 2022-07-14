import 'package:flutter/material.dart';
import 'package:music_player/authentication/sign_up.dart';
import 'package:music_player/constants/colours.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: signInColor,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                CircleAvatar(
                  radius: 35,
                  child: Image.asset('logo.png'),
                  backgroundColor: backButtonColor,
                ),
                SizedBox(height: 200),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: highlightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
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
                      SizedBox(height: 35),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: signUpColor,
                            minimumSize: const Size.fromHeight(60),
                            elevation: 0,
                          ),
                          child: Text(
                            'Sign In',
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
                            primary: highlightColor,
                            minimumSize: const Size.fromHeight(60),
                            side: BorderSide(width: 1, color: Colors.white70),
                            elevation: 2,
                          ),
                          label: Text(
                            'Sign In with Google',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(height: 50),
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
            context, MaterialPageRoute(builder: (context) => SignUp()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Don't have an account?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              )),
          TextSpan(
              text: ' Sign Up',
              style: TextStyle(
                color: backButtonColor,
                fontSize: 15,
              ))
        ]),
      ),
    );
  }
}
