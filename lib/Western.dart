import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;


class Western extends StatefulWidget {
  const Western({super.key});

  @override
  State<Western> createState() => _WesternState();
}

class _WesternState extends State<Western> {

  List<dynamic> userlist = [];
  Future<List<dynamic>> getData() async {
    var apiResponse =
    await http.get(Uri.parse("http://139.5.189.164/menu/category"));
    if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {
      userlist = jsonDecode(apiResponse.body);
      // print(userlist);
      return userlist;
    } else {
      throw Exception("Failed to load data");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      body:Column(
        children: [
          ///APPBAR
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),bottomLeft: Radius.circular(35))
            ),
            child: Column(
              children: [
                SizedBox(
                    height: 60
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150),
                  child: Text("THEKITCHEN~",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                ),
                SizedBox(
                    height: 20
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 230),
                  child: Text("Western",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.white54)),
                )
              ],
            ),
          ),


          ///LISTVIEW
          FutureBuilder(
              future: getData(),
              builder: (BuildContext context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text("Error:${snapshot.error}"));
                } else if (snapshot.hasData) {
                  var a = userlist[3];
                  // print(a);
                  //  print(a["category_title"]);
                  //  print(a["image"]);
                  var b=a["cuisines"];
                  //print(b);
                  var c=b[0];
                  //print(c);
                  // print(c["cuisine_title"]);
                  // print(c["image"]);

                  //print(a["subcategories"]);
                  var d =a["subcategories"];
                  //print(d);
                  var e =d[0];
                  //print(e);
                  print(e["subcategory_title"]);
                  print(e["image"]);
                  // print(d["image"]);
                  //  final finaldata = snapshot.data!;
                  // final lastdata= finaldata.indexed;

                  return Container(
                    height: 700,
                    width: 390,
                    child: ListView(
                      children: [
                        //category
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(image: NetworkImage(a["image"]),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(a["category_title"],style: TextStyle(fontSize: 25,color: Colors.black54),),
                                )
                              ],
                            ),
                          ),
                        ),
                        //sub-category
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(image: NetworkImage(e["image"]),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(e["subcategory_title"],style: TextStyle(fontSize: 25,color: Colors.black54),),
                                )
                              ],
                            ),
                          ),
                        ),
                        //cussain
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Container(
                            height: 120,
                            width: 370,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(image: NetworkImage(c["image"]),fit: BoxFit.fill)
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Text(c["cuisine_title"],style: TextStyle(fontSize: 25,color: Colors.black54),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],

                    ),
                  );
                }
                return Text("No Data Found");
              }),

        ],
      ),
    );
  }
}
