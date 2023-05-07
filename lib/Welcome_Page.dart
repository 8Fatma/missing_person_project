import 'dart:async';
import 'package:flutter/material.dart';

import 'Account/Login_Page.dart';

// ignore: camel_case_types
class Welcome_Page extends StatefulWidget {
  const Welcome_Page({Key? key}) : super(key: key);

  @override
  _Welcome_PageState createState() => _Welcome_PageState();
}

// ignore: camel_case_types
class _Welcome_PageState extends State<Welcome_Page> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Login_Page(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112031),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/welcome.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.all(
                        10,
                      ),
                      child: Text(
                        "نحن نرسم ابتسامة, نمسح دمعة, ونُعيد الأمل المفقود .",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(""),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        Icons.voicemail_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "325,225",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "مشاهدة",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "15",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "دمعة تم مسحها",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        Icons.headset_mic,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "123",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "شخص مفقود",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 15,
            ),
            child: Text(
              "جميع الحقوق محفوظة © 2023 MissingPerson",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}