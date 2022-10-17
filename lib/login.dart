import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(LoginScreen1());
}

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});
  @override
  State<LoginScreen1> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Container(
            color: Colors.white,
            child: Column(children: [
              Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const FlutterLogo(),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Đăng ký ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 74, 64, 255),
                    fontSize: 20,
                  ),
                ),
              ),
              const Text(
                'Chỉ dành cho thuê bao Viettel',
                style: TextStyle(color: Colors.black, fontSize: 17),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: TextField(
                  style: TextStyle(fontSize: 20, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Số điện thoại',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Tạo mật khẩu',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
                child: const TextField(
                  decoration: InputDecoration(
                      labelText: 'Nhập lại mật khẩu',
                      labelStyle: TextStyle(color: Colors.grey, fontSize: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                        text: "Tôi đồng ý với các ",
                        style: TextStyle(fontSize: 17, color: Colors.black),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              }),
                            text: "Điều khoản của dịch vụ",
                            style: TextStyle(fontSize: 17, color: Colors.blue,decoration: TextDecoration.underline ),
                          
                          )
                        ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 50,
                    child: const Center(
                      child: Text(
                        'Gửi mã xác thực',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 100),
                child: Text(
                  'Bạn có thể đăng ký với :',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90, right: 90, top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.blue,
                      ),
                      child: const FlutterLogo(),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.blue,
                      ),
                      child: const FlutterLogo(),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.blue,
                      ),
                      child: const FlutterLogo(),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 40, right: 25, top: 20),
                child: RichText(
                  text: TextSpan(
                      text: "Bạn đã có tài khoản VietPlant ? ",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              }),
                            text: "Đăng nhập",
                            style: TextStyle(fontSize: 17, color: Colors.blue))
                      ]),
                ),
              ),
            ])),
      )),
    );
  }
}
