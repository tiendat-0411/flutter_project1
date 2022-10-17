import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Signin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const FlutterLogo(),
              ),
              const Padding(
                padding: EdgeInsets.only( top :20),
                child: Text(
                  'Bạn đồng hành của người yêu cây trồng ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 50,
                  width: 300,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SigninScreen()));
                              }),
                            text: "Đăng ký1",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height: 50,
                  width: 300,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(fontSize: 22, color: Colors.white,
                      ),
                    ),
                  )),
          )],
          ),
        ),
      ),
    );
  }
}
