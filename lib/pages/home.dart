import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quizapp4/pages/question.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70, //خلفية التطبيق
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 30.0), //لعمل مسافة اسفل العناصر كلها
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, //لجعل العنصر يبدأ من اليسار
            children: [
              Stack(
                children: [
                  Container(
                    height: 220,
                    padding: const EdgeInsets.only(left: 20.0, top: 50.0),
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20), //لتدوير حواف الغلاف خلف الصورة الشخصية
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset("images/boy.jpg",
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text("Ahmed Tariq",
                            style:
                                TextStyle(color: Colors.white, fontSize: 22.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    margin: const EdgeInsets.only(
                      top: 120.0,
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "images/quizIcon.jpeg",
                              height: 250,
                              width: 150,
                            )),
                        const SizedBox(
                          width: 30.0,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Play & Win",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 35.0),
                            ),
                            Text(
                              "Play Quiz by\nguessing the image",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Top Quiz Categories",
                  style: TextStyle(color: Colors.black, fontSize: 23.0),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, //لعمل مسافة بين الصورتين
                  children: [//الصورة الاولى  باريس
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=> Questin(Category: "Place",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5.0, //حجم الظل لصورة الباريس
                        child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Image.asset(
                                "images/place.png",
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                "Place",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22.0),
                              ),
                            ])),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=> Questin(Category: "Animals",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5.0, //حجم الظل لصورة الكلب
                        child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Image.asset(
                                "images/dog.png",
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                "Animals",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22.0),
                              ),
                            ])),
                      ),
                    ),
                  ],
                ),
              ), //السطر الثاثي الاقلام والفواكه
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, //لعمل مسافة بين الصورتين
                  children: [ //الصورة الاقلام
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=> Questin(Category: "Objects",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5.0, //حجم الظل لصورة الاقلام
                        child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Image.asset("images/object.png",
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                "Objects",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22.0),
                              ),
                            ])),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=> Questin(Category: "Fruits",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5.0, //حجم الظل لصورة الفواكه
                        child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Image.asset(
                                "images/fruit.png",
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                "Fruits",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22.0),
                              ),
                            ])),
                      ),
                    ),
                  ],
                ),
              ),

              //السطر الثالث الرياضة والعشوائي
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, //لعمل مسافة بين الصورتين
                  children: [//الصورة الاولى  الرياضة
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=> Questin(Category: "Sports",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5.0, //حجم الظل لصورة الرياضة
                        child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Image.asset(
                                "images/sports.png",
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text(
                                "Sports",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22.0),
                              ),
                            ])),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (context)=> Questin(Category: "Random",)));
                      },
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5.0, //حجم الظل لصورة العشوائي
                        child: Container(
                            width: 150,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Image.asset(
                                "images/random.png",
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              const Text("ٌRandom",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22.0),
                              ),
                            ])),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
