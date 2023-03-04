import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'home.dart';

class Plant1 extends StatefulWidget {
  const Plant1({Key? key}) : super(key: key);

  @override
  State<Plant1> createState() => _Plant1State();
}

class _Plant1State extends State<Plant1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder<http.Response>(
          future: getWebFromServer(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "images/1_plant.jpg",
                    fit: BoxFit.cover,
                  ),
                  Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      margin: const EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.green,
                                          ),
                                          borderRadius:
                                          const BorderRadius.all(
                                              Radius.circular(5))),
                                      child: InkWell(
                                          onTap: () {},
                                          child: Icon(Icons.arrow_back,
                                              size: 30,
                                              color: Colors.green.shade200)),
                                    )),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                            builder: (context) {
                                              return const Scr1();
                                            }));
                                      },
                                      child: Container(
                                        margin: const EdgeInsets.all(7),
                                        decoration: BoxDecoration(
                                          // shape: BoxShape.circle,
                                            borderRadius: BorderRadius.circular(
                                                5),
                                            border: Border.all(
                                              color: Colors.green,
                                            )
                                        ),
                                        child: Icon(Icons.shopping_bag,
                                            size: 30,
                                            color: Colors.green.shade200),
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 7,
                            child: Padding(
                              padding: EdgeInsets.only(top: MediaQuery
                                  .of(context)
                                  .size
                                  .height / 2),
                              child: Card(
                                  elevation: 20,
                                  child: SizedBox(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width,
                                    child: Column(
                                      children: [
                                        const SizedBox(
                                          width: 120,
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                flex: 4,
                                                child: Text((jsonDecode(
                                                    snapshot.data!.body
                                                        .toString())[0]
                                                ['Plant_Name']),
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight
                                                            .bold,
                                                        color:
                                                        Colors.green.shade500),
                                                    textAlign: TextAlign
                                                        .center),
                                              ),
                                              Expanded(
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        (jsonDecode(
                                                            snapshot.data!.body
                                                                .toString())[0]
                                                        ['Plant_Price']),
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight
                                                                .bold,
                                                            color: Colors.green
                                                                .shade200),
                                                      ),
                                                      Icon(
                                                        Icons
                                                            .monetization_on_sharp,
                                                        color: Colors.green
                                                            .shade200,
                                                      ),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            margin: const EdgeInsets.all(20),
                                            child: Center(
                                                child: Text(
                                                  (jsonDecode(
                                                      snapshot.data!.body
                                                          .toString())[0]
                                                  ['Plant_Description']),
                                                  style:
                                                  TextStyle(color: Colors.green
                                                      .shade500),
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  margin: const EdgeInsets.all(
                                                      7),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.green,
                                                      ),
                                                      borderRadius: const BorderRadius
                                                          .all(
                                                          Radius.circular(5))),
                                                  child: Icon(
                                                    Icons
                                                        .monitor_heart_outlined,
                                                    color: Colors.green
                                                        .shade200,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  margin: const EdgeInsets.all(
                                                      7),
                                                  decoration: BoxDecoration(
                                                    // shape: BoxShape.circle,

                                                    borderRadius:
                                                    BorderRadius.circular(5),
                                                    color: Colors.greenAccent,
                                                  ),
                                                  child: TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .push(
                                                            MaterialPageRoute(
                                                                builder: (
                                                                    context) {
                                                                  return const Scr1();
                                                                }));
                                                      },
                                                      child: const Text(
                                                          'Add To Cart ',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              );
            }
            else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        )


    );
  }

  Future<http.Response> getWebFromServer() async {
    var response = await http.get(
        Uri.parse(
            "https://638030388efcfcedacfe98c5.mockapi.io/Flutter_Project"));
    return response;
  }
}
