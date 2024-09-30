import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Localization"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "welcome".tr(),
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.green,
                    textColor: Colors.white,
                    onPressed: () {
                      context.setLocale(Locale('en', 'US'));
                    },
                    child: Text("English"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      context.setLocale(Locale('ru', 'RU'));
                    },
                    child: Text("Russian"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: MaterialButton(
                    height: 45,
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      context.setLocale(Locale('uz', 'UZ'));
                      },
                    child: Text("Uzbek"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}