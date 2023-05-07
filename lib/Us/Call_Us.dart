import 'package:flutter/material.dart';

// ignore: camel_case_types
class Call_Us_Page extends StatefulWidget {
  const Call_Us_Page({Key? key}) : super(key: key);

  @override
  State<Call_Us_Page> createState() => _Call_Us_PageState();
}

// ignore: camel_case_types
class _Call_Us_PageState extends State<Call_Us_Page> {
  // ignore: non_constant_identifier_names
  TextEditingController First_name = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Last_name = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Email = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController City = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Country = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Problem = TextEditingController();
  bool value = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112031),
      body: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                top: 25,
                bottom: 15,
                start: 15,
                end: 15,
              ),
              child: Column(
                children: [
                  const Text(
                    "أتصل بنا",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "ابقى على تواصل معنا... فنحن نريد أن نسمع منك",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    child: Image.asset(
                      "assets/call.jpg",
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardAppearance: Brightness.dark,
                          controller: Last_name,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: ' الأسم الأخير',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' هذا الحقل مطلوب';
                            } else if (value.length < 3) {
                              return 'يجب ان يحتوي الاسم علي 3 احرف علي الاقل';
                              // ignore: unrelated_type_equality_checks
                            } else if (value.length > 40) {
                              return 'يجب ان يحتوي الاسم علي 40 حرف علي الاكثر';
                              // ignore: unrelated_type_equality_checks
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: First_name,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'الأسم الأول',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 0.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' هذا الحقل مطلوب';
                            } else if (value.length < 3) {
                              return 'يجب ان يحتوي الاسم علي 3 احرف علي الاقل';
                              // ignore: unrelated_type_equality_checks
                            } else if (value.length > 40) {
                              return 'يجب ان يحتوي الاسم علي 40 حرف علي الاكثر';
                              // ignore: unrelated_type_equality_checks
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: Email,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'البريد الإلكتروني',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.5,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' هذا الحقل مطلوب';
                      } else if (!RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)) {
                        return 'هذا الحقل غير صحيح';
                        // ignore: unrelated_type_equality_checks
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          controller: City,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: ' المحافظة',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 0.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' هذا الحقل مطلوب';
                            } else if (value.length < 3) {
                              return 'يجب ان تحتوي المحافظة علي 3 احرف علي الاقل';
                              // ignore: unrelated_type_equality_checks
                            } else if (value.length > 40) {
                              return 'يجب ان تحتوي المحافظة علي 40 حرف علي الاكثر';
                              // ignore: unrelated_type_equality_checks
                            }
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: Country,
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'المدينة',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 0.5,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                10.0,
                              ),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 0.5,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return ' هذا الحقل مطلوب';
                            } else if (value.length < 3) {
                              return 'يجب ان تحتوي المدينة علي 3 احرف علي الاقل';
                              // ignore: unrelated_type_equality_checks
                            } else if (value.length > 40) {
                              return 'يجب ان تحتوي المدينة علي 40 حرف علي الاكثر';
                              // ignore: unrelated_type_equality_checks
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: Problem,
                    textAlign: TextAlign.right,
                    maxLines: 4,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'الإبلاغ عن مشكلة',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0.5,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 0.5,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ' هذا الحقل مطلوب';
                      } else if (value.length < 3) {
                        return 'يجب ان يحتوي علي 3 احرف علي الاقل';
                        // ignore: unrelated_type_equality_checks
                      } else if (value.length > 40) {
                        return 'يجب ان يحتوي علي 40 حرف علي الاكثر';
                        // ignore: unrelated_type_equality_checks
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        "الموافقة علي الخصوصية",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Checkbox(
                        side: const BorderSide(
                          color: Colors.white,
                          width: 0.5,
                        ),
                        activeColor: Colors.white,
                        checkColor: const Color(0xff112031),
                        value: value,
                        // ignore: avoid_types_as_parameter_names
                        onChanged: (bool? value) {
                          setState(
                            () {
                              this.value = value!;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    highlightColor: const Color(0xff112031),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    height: 60,
                    onPressed: () //async
                        {
                      if (formKey.currentState!.validate()) {}
                    },
                    color: const Color(0xff24baef),
                    minWidth: double.infinity,
                    child: const Text(
                      'تسجيل',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "جميع الحقوق محفوظة © 2023 MissingPerson",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
