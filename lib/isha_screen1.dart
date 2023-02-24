import 'package:flutter/material.dart';

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
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Icon(Icons.arrow_back,
                                size: 30, color: Colors.green.shade200),
                          )),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                          child: Text(
                        "Search ",
                        style:
                            TextStyle(color: Colors.green.shade200, fontSize: 18),
                      )),
                    ),
                    flex: 4,
                  ),
                  Expanded(
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: Icon(Icons.shopping_bag_outlined,
                              size: 30, color: Colors.green.shade200),
                        )),
                    flex: 1,
                  ),
                ],
              ),
              flex: 1,
            ),
            Expanded(
              child: Card(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xFFEEEEEE)),//0xFFEEEEEE
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.green.withOpacity(0.7),
                        ),
                        labelText: 'Search Plant',
                        labelStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ),
              flex: 1,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: Container( child: Center(child: Text("Indoor", style: TextStyle(color: Colors.green),)),)),
                  Expanded(child: Container(child: Center(child: Text("Outdoor", style: TextStyle(color: Colors.green),)))),
                  Expanded(child: Container(child: Center(child: Text("Succulent", style: TextStyle(color: Colors.green),)))),
                  Expanded(child: Container(child: Center(child: Text("DeskPlant", style: TextStyle(color: Colors.green),)))),
                ],
              ),
              flex: 1,
            ),









            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(

                            decoration: BoxDecoration(
                                border: Border.all(

                                  color: Colors.green,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Image.asset("images/1_plant.jpg",fit:BoxFit.cover),
                            margin: EdgeInsets.all(7),
                            padding: EdgeInsets.all(5),
                          ),
                        flex: 2,),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.all(7),
                              padding: EdgeInsets.all(5),
                            child: Image.asset("images/2_plant.jpg",fit:BoxFit.cover),
                              decoration: BoxDecoration(
                                  border: Border.all(

                                    color: Colors.green,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),
                        flex: 2,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(7),
                            padding: EdgeInsets.all(5),
                            child: Image.asset("images/3_plant.jpg" ,fit:BoxFit.cover,),
                              decoration: BoxDecoration(
                                  border: Border.all(

                                    color: Colors.green,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),
                        flex: 2,),
                      ],
                    ),
                  ),







                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.all(7),
                              padding: EdgeInsets.all(5),
                            child: Image.asset("images/4_plant.jpg") ,
                              decoration: BoxDecoration(
                                  border: Border.all(

                                    color: Colors.green,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),
                          flex: 3,
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.all(7),
                              padding: EdgeInsets.all(5),
                            child: Image.asset("images/6_plant.jpg"),
                              decoration: BoxDecoration(
                                  border: Border.all(

                                    color: Colors.green,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),

                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              flex: 7,
            )
          ],
        ),
      ),
    );
  }
}
