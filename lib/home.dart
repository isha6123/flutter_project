import 'package:flutter/material.dart';
import 'package:my_screens_project/plant_1.dart';
import 'package:my_screens_project/plant_2.dart';
import 'package:my_screens_project/plant_3.dart';
import 'package:my_screens_project/plant_4.dart';
import 'package:my_screens_project/plant_5.dart';

class Scr1 extends StatefulWidget {
  const Scr1({Key? key}) : super(key: key);

  @override
  State<Scr1> createState() => _Scr1State();
}

class _Scr1State extends State<Scr1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        elevation: 10,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back,
                            size: 30, color: Colors.green.shade200)),
                  ),
                  Expanded(
                    flex: 4,
                    child: Center(
                        child: Text(
                      "Search ",
                      style:
                          TextStyle(color: Colors.green.shade200, fontSize: 18),
                    )),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                        onTap: () {},
                        child: Icon(Icons.shopping_bag_outlined,
                            size: 30, color: Colors.green.shade200)),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Card(
                elevation: 2,
                child: Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color(0xFFEEEEEE)),//0xFFEEEEEE
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.green.withOpacity(0.7),
                        ),
                        labelText: 'Search Plant',
                        labelStyle: const TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: const [
                  Expanded(child: Center(child: Text("Indoor", style: TextStyle(color: Colors.green),))),
                  Expanded(child: Center(child: Text("Outdoor", style: TextStyle(color: Colors.green),))),
                  Expanded(child: Center(child: Text("Succulent", style: TextStyle(color: Colors.green),))),
                  Expanded(child: Center(child: Text("DeskPlant", style: TextStyle(color: Colors.green),))),
                ],
              ),
            ),









            Expanded(
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const Plant1();
                            },));
                          },
                          child: Expanded(
                            flex: 2,
                            child: Container(

                              decoration: BoxDecoration(
                                  border: Border.all(

                                    color: Colors.green,
                                  ),
                                  borderRadius: const BorderRadius.all(Radius.circular(20))
                              ),
                              margin: const EdgeInsets.all(7),
                              padding: const EdgeInsets.all(5),
                              child: Image.asset("images/1_plant.jpg",fit:BoxFit.cover),
                            ),),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const Plant2();
                            },));
                          },
                          child: Expanded(
                            flex: 2,
                            child: Container(
                                margin: const EdgeInsets.all(7),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(

                                      color: Colors.green,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),
                              child: Image.asset("images/2_plant.jpg",fit:BoxFit.cover)
                            ),),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const Plant3();
                            },));
                          },
                          child: Expanded(
                            flex: 2,
                            child: Container(
                              margin: const EdgeInsets.all(7),
                              padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(

                                      color: Colors.green,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),
                              child: Image.asset("images/3_plant.jpg" ,fit:BoxFit.cover,)
                            ),),
                        ),
                      ],
                    ),
                  ),







                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return const Plant4();
                            },));
                          },
                          child: Expanded(
                            flex: 3,
                            child: Container(
                                margin: const EdgeInsets.all(7),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(

                                      color: Colors.green,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),
                              child: Image.asset("images/4_plant.jpg")
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return const Plant5();
                              },));
                            },
                            child: Container(
                                margin: const EdgeInsets.all(7),
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.green,
                                    ),
                                    borderRadius: const BorderRadius.all(Radius.circular(20))
                                ),
                              child: Image.asset("images/6_plant.jpg")
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
