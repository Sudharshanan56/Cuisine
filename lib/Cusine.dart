import 'dart:convert';
import 'package:cuisines_world/Item_1.dart';
import 'package:cuisines_world/NewItem_12.dart';
import 'package:cuisines_world/New_item.dart';
import 'package:cuisines_world/North_India.dart';
import 'package:cuisines_world/Western.dart';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';

import 'South_indian.dart';

class Cusine extends StatefulWidget {
  const Cusine({super.key});

  @override
  State<Cusine> createState() => _CusineState();
}

class _CusineState extends State<Cusine> {

  List pages = [
    North_India(),
    South_Indian(),
    New_Item(),
    Item_1(),
    New_Item_12(),
    Western(),
  ];

  List<dynamic> userlist = [];
  Future<List<dynamic>> getData() async {
    var apiResponse =
    await http.get(Uri.parse("http://139.5.189.164/menu/cuisine"));
    if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {
      userlist = jsonDecode(apiResponse.body);
      print(userlist);
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,

        body: Column(
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
                    padding: const EdgeInsets.only(right: 240),
                    child: Text("Cusines ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.white54)),
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
                    //  final finaldata = snapshot.data!;
                    // final lastdata= finaldata.indexed;

                    return Container(
                      height: 700,
                      width: 390,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: userlist.length,
                        itemBuilder: (Context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push( MaterialPageRoute(builder: (context)=>pages[index]));
                              },
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
                                          image: DecorationImage(image: NetworkImage(userlist[index]["image"]),fit: BoxFit.fill)
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40),
                                      child: Text(userlist[index]["cuisine_title"],style: TextStyle(fontSize: 25,color: Colors.black54),),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                  return Text("No Data Found");
                }),

          ],
        ),
      ),
    );
  }
}
