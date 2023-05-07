import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:missing_person_project/Us/Call_Us.dart';
import 'package:missing_person_project/Search/Search_Page.dart';
import 'package:missing_person_project/Us/Who_Us.dart';

import 'Add_missing_person.dart';
import '../API/Controller.dart';

// ignore: camel_case_types
class Missing_Person extends StatefulWidget {
  const Missing_Person({Key? key}) : super(key: key);

  @override
  State<Missing_Person> createState() => _Missing_PersonState();
}

// ignore: camel_case_types
class _Missing_PersonState extends State<Missing_Person> {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112031),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xff112031),
        actions: const [
          Image(
            width: 45,
            image: AssetImage(
              "assets/logo.png",
            ),
          ),
        ],
        title: TextFormField(
          keyboardAppearance: Brightness.dark,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: Colors.white,
          ),
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: ' ابحث عن شخص',
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 20,
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          bottom: 15,
          left: 5,
          right: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Text(
                "الأشخاص المفقودة",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Divider(
                endIndent: 15,
                indent: 15,
                color: Colors.white,
                thickness: 0.2,
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
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
      drawer: Drawer(
        backgroundColor: const Color(0xff112031),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 20,
            start: 10,
            end: 10,
            bottom: 20,
          ),
          child: Column(
            children: [
              const Image(
                width: 180,
                image: AssetImage(
                  "assets/missing.png",
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Add_missing_person(),
                    ),
                  );
                },
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Icon(
                      Icons.emergency_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "بلغ عن شخص مفقود",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Search_Person_Page(),
                    ),
                  );
                },
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Icon(
                      Icons.person_search,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "بحث عن شخص مفقود",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Missing_Person()));
                },
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Icon(
                      Icons.wc,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "الاشخاص المفقودون",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WhoAreWePage(),
                    ),
                  );
                },
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Icon(
                      Icons.question_mark,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "من نحن",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Call_Us_Page(),
                    ),
                  );
                },
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "أتصل بنا",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {
                  controller.logout();
                },
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: const [
                    Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "خروج",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              // TextButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) =>  MissingPersonPage(),
              //       ),
              //     );                },
              //   child: Row(
              //     textDirection: TextDirection.rtl,
              //     children: const [
              //       Icon(
              //         Icons.logout_outlined,
              //         color: Colors.white,
              //         size: 15,
              //       ),
              //       SizedBox(
              //         width: 5,
              //       ),
              //       Text(
              //         "Test",
              //         textDirection: TextDirection.rtl,
              //         textAlign: TextAlign.right,
              //         style: TextStyle(
              //           fontSize: 16,
              //           fontWeight: FontWeight.w500,
              //           color: Colors.white,
              //         ),
              //       ),
              //       Spacer(
              //         flex: 1,
              //       ),
              //       Icon(
              //         Icons.arrow_left,
              //         color: Colors.white,
              //         size: 30,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(
                Icons.filter_center_focus_rounded,
              ),
              label: 'بحث عن مفقود',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_card_rounded,
              ),
              label: 'بلغ عن مفقود',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ' المفقودون',
            ),
          ],
          currentIndex: 2,
          selectedItemColor: const Color(0xff24baef),
          backgroundColor: const Color(0xff112031),
          unselectedItemColor: Colors.white,
          onTap: (f) async {
            if (f == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Search_Person_Page(),
                ),
              );
            } else if (f == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Add_missing_person(),
                ),
              );
            } else if (f == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Missing_Person(),
                ),
              );
            }
          }),
    );
  }
//elfunction eli btdina el data
  // Widget buildHomeItem() => MaterialButton(
  //       height: 150,
  //       minWidth: double.infinity,
  //       onPressed: () {},
  //       child: Row(
  //         children: [
  //           Expanded(
  //             child: Column(
  //               children: const [
  //                 Text(
  //                   'الاسم ',
  //                   textDirection: TextDirection.rtl,
  //                   style: TextStyle(
  //                     fontSize: 18.0,
  //                     color: Colors.white,
  //                     fontWeight: FontWeight.bold,
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: 10.0,
  //                 ),
  //                 Text(
  //                   ' هذا الشخص مفقود هذا الشخص مفقود هذا الشخص مفقود هذا الشخص مفقود هذا الشخص مفقود',
  //                   textDirection: TextDirection.rtl,
  //                   style: TextStyle(
  //                     fontSize: 16.0,
  //                     color: Colors.white,
  //                   ),
  //                   maxLines: 2,
  //                   overflow: TextOverflow.ellipsis,
  //                 ),
  //               ],
  //             ),
  //           ),
  //           const SizedBox(
  //             width: 10.0,
  //           ),
  //           ClipRRect(
  //             borderRadius: BorderRadius.circular(
  //               10,
  //             ),
  //             child: Image.asset(
  //               "assets/one.jpg",
  //               width: 100.0,
  //             ),
  //           ),
  //         ],
  //       ),
  //     );
}
