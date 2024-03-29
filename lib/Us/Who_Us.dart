import 'package:flutter/material.dart';

class WhoAreWePage extends StatefulWidget {
  const WhoAreWePage({Key? key}) : super(key: key);

  @override
  State<WhoAreWePage> createState() => _WhoAreWePageState();
}

class _WhoAreWePageState extends State<WhoAreWePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff112031),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    "assets/missing.png",
                    height: 250,
                    width: 300,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "نحن نرسم ابتسامة، نمسح دمعة، ونعيد الأمل المفقود.",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "ميسينج بيرسون هي منصة الكترونية مستقلة تهدف الى توحيد الجهود للتبليغ والبحث عن المفقودين في مصر.",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "ففي حال كان لديك شخص قريب لك وهو حاليا في عداد المفقودين. يمكنك استخدام خدمتنا بلغ عن شخص مفقود ليتمكن أكبر عدد من الناس بمساعدتك في البحث معك.",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w200,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "جميع الحقوق محفوظة © 2023 MissingPerson",
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
