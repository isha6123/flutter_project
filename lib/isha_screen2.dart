import 'package:flutter/material.dart';

import 'isha_screen1.dart';

class Scr2 extends StatefulWidget {
  const Scr2({Key? key}) : super(key: key);

  @override
  State<Scr2> createState() => _Scr2State();
}

class _Scr2State extends State<Scr2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "images/for_screen1.jpg",
            fit: BoxFit.cover,
          ),
          Container(
              child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: Container(
                          child: InkWell(
                              onTap: () {},
                              child: Container(
                                child: Icon(Icons.arrow_back,
                                    size: 30, color: Colors.green.shade200),
                              )),
                          margin: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.green,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        flex: 1),
                    Expanded(
                      child: Container(),
                      flex: 4,
                    ),
                    Expanded(
                      child: Container(
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Scr1();
                              }));
                            },
                            child: Container(
                              margin: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                // shape: BoxShape.circle,

                                borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.green,
                                  )
                              ),
                              child: Icon(Icons.shopping_bag,
                                  size: 30, color: Colors.green.shade200),
                            )),
                      ),
                      flex: 1,
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200),
                    child: Card(
                        elevation: 20,
                        child: Container(
                          width: 400,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Text("   Aloe Vera ",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      Colors.green.shade500)),
                                        ),
                                        flex: 4,
                                      ),
                                      Expanded(
                                          child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              "15",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.green.shade200),
                                            ),
                                          ),
                                          Container(
                                              child: Icon(
                                            Icons.monetization_on_sharp,
                                            color: Colors.green.shade200,
                                          )),
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(20),
                                  child: Center(
                                      child: Text(
                                    "Aloe vera is a succulent plant species of the genus Aloe. \nIt is widely distributed, and is considered an invasive species \nin many world regions. An evergreen perennial, it originates \nfrom the Arabian Peninsula, but grows wild in tropical, semi-tropical, \nand arid climates around the world",
                                    style:
                                        TextStyle(color: Colors.green.shade500),
                                  )),
                                ),
                                flex: 2,
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Icon(
                                          Icons.monitor_heart_outlined,
                                          color: Colors.green.shade200,
                                        ),
                                        margin: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.green,
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                          // shape: BoxShape.circle,

                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.greenAccent,
                                        ),
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return Scr1();
                                              }));
                                            },
                                            child: Text('Add To Cart ',
                                                style: TextStyle(
                                                    color: Colors.black))),
                                      ),
                                      flex: 3,
                                    ),
                                  ],
                                ),
                                flex: 1,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
                flex: 7,
              ),
            ],
          ))
        ],
      ),
    );
  }
}
