import 'package:flutter/material.dart';

// ignore: camel_case_types
class Forget_Password_Page extends StatefulWidget {
  const Forget_Password_Page({Key? key}) : super(key: key);

  @override
  State<Forget_Password_Page> createState() => _Forget_Password_PageState();
}

// ignore: camel_case_types
class _Forget_Password_PageState extends State<Forget_Password_Page> {
  // ignore: non_constant_identifier_names
  TextEditingController Email = TextEditingController();
  late bool _validate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112031),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 15,
                end: 15,
                top: 30,
                bottom: 30,
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5,
                  ),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.white,
                  ),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.all(
                        15,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "نسيت كلمة المرور",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            "قم بإرسال البريد الالكتروني و سيتم إرسال رمز التحقق علي البريد الالكتروني الخاص بك .",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white38,
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            controller: Email,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'البريد الالكتروني',
                              errorText: _validate
                                  ? 'Enter a valid email please!'
                                  : null,
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              suffixIcon: const Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 0.5,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(80.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  80.0,
                                ),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          MaterialButton(
                            highlightColor: const Color(0xff112031),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                80.0,
                              ),
                            ),
                            height: 60,
                            onPressed: () //async
                                {
                              setState(
                                () {
                                  // ignore: avoid_print
                                  ((Email.text.isEmpty ||
                                          !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              .hasMatch(Email.text)))
                                      ? _validate = true
                                      // ignore: avoid_print
                                      : print("done");
                                },
                              );
                            },
                            color: const Color(0xff24baef),
                            minWidth: double.infinity,
                            child: const Text(
                              'تحقق من البريد الالكتروني',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w200,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
