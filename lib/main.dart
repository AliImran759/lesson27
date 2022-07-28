import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lesson27(),
    );
  }
}

class Lesson27 extends StatelessWidget {
  const Lesson27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B1E2D),
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
            ),
            SizedBox(
              width: 34,
            ),
            Text(
              "Изменить ФИО",
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff0B1E2D),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 28,
          top: 89,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textcart(
                        text: 'Имя',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Имя',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textcart(
                        text: 'Фамилия',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Фамилия',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textcart(
                        text: 'Отчество',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Отчество',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22, top: 300),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8507,
                          height: MediaQuery.of(context).size.height * 0.0591,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff22A2BD),
                                side: BorderSide.none,
                              ),
                              onPressed: () {},
                              child: Text(
                                'Сохранить',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffF2F2F2),
                                ),
                              )),
                        ),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  final String hintText;
  const Textfield({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8507,
      height: MediaQuery.of(context).size.height * 0.0591,
      child: TextField(
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xff5B6975)),
            filled: true,
            fillColor: Color(0xff152A3A)),
      ),
    );
  }
}

class Textcart extends StatelessWidget {
  final String text;
  const Textcart({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
      ),
    );
  }
}
