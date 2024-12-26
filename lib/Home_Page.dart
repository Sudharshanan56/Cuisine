// import 'dart:convert';
// import 'package:http/http.dart'as http;
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
// import 'Cusine.dart';
// import 'Item_1.dart';
// import 'NewItem_12.dart';
// import 'New_item.dart';
// import 'North_India.dart';
// import 'South_indian.dart';
// import 'Western.dart';
//
// class Home_Page extends StatefulWidget {
//   const Home_Page({super.key});
//
//   @override
//   State<Home_Page> createState() => _Home_PageState();
// }
//
// class _Home_PageState extends State<Home_Page> {
//
//   List carimg= [
//     "https://assets.gqindia.com/photos/671213b639200ebd1a43c0a4/16:9/w_2560%2Cc_limit/Best-restaurants-serving-Burmese-and-Thai-food-in-Mumbai.jpg",
//     "https://static.toiimg.com/thumb/imgsize-75716,msid-111425013/111425013.jpg?width=500&resizemode=4",
//     "https://www.chefonline.co.uk/blog/public/storage/image/post_image/post_image_21659433690.jpg",
//     "https://static.vecteezy.com/system/resources/previews/027/100/640/non_2x/arabic-and-middle-eastern-food-displayed-on-a-dinner-table-the-meal-includes-meat-kebab-hummus-photo.jpg",
//     "https://thumbs.dreamstime.com/b/indulge-exquisite-flavors-ramadan-captivating-photo-capturing-essence-steaming-plate-chicken-mandi-306685239.jpg",
//   ];
//
//   List pages = [
//     North_India(),
//     South_Indian(),
//     New_Item(),
//     Item_1(),
//     New_Item_12(),
//     Western(),
//   ];
//
//   List<dynamic> userlist2 = [];
//   Future<List<dynamic>> getData2() async {
//     var apiResponse =
//     await http.get(Uri.parse("http://139.5.189.164/menu/subcategory"));
//     if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {
//       userlist2 = jsonDecode(apiResponse.body);
//       return userlist2;
//     } else {
//       throw Exception("Failed to load data");
//     }
//   }
//
//   List<dynamic> userlist = [];
//   Future<List<dynamic>> getData() async {
//     var apiResponse =
//     await http.get(Uri.parse("http://139.5.189.164/menu/cuisine"));
//     if (apiResponse.statusCode == 200 || apiResponse.statusCode == 201) {
//       userlist = jsonDecode(apiResponse.body);
//       return userlist;
//     } else {
//       throw Exception("Failed to load data");
//     }
//   }
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getData();
//     getData2();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.grey.shade200,
//
//         // appBar: AppBar(
//         //   backgroundColor: Colors.black,
//         //   title: ),
//
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 height: 200,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.only(bottomRight: Radius.circular(35),bottomLeft: Radius.circular(35))
//                 ),
//                 child: Column(children: [
//                   SizedBox(
//                     height: 60
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 150),
//                     child: Text("THEKITCHEN~",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
//                   ),
//
//                   SizedBox(
//                       height: 20
//                   ),
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 25,right: 25),
//                     child: Container(
//                       height: 50,
//                       width: 450,
//                       child: Center(
//                         child: TextFormField(
//
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderRadius:
//                                 BorderRadius.circular(20),
//                                 borderSide: BorderSide.none,
//                               ),
//                               prefixIcon: Icon(Icons.search_sharp,size: 30,color: Colors.white38,),
//                               hintText: "Search something tasty...",
//                               hintStyle: TextStyle(color: Colors.white38,fontSize: 20),
//                               filled: true,
//                               fillColor: Colors.white38,
//                           ),
//
//                         ),
//                       ),
//                     ),
//
//                   ),
//                 ],),
//               ),
//
//
//               Padding(
//                 padding: const EdgeInsets.only(top: 20,bottom: 40),
//                 child: CarouselSlider.builder(
//                     options: CarouselOptions(
//                         height: 200,
//                         aspectRatio: 16 / 9,
//                         viewportFraction: 1,
//                         enableInfiniteScroll: true,
//                         autoPlay: true,
//                         autoPlayInterval: Duration(seconds: 3),
//                         autoPlayAnimationDuration: Duration(milliseconds: 70),
//                         autoPlayCurve: Curves.fastOutSlowIn,
//                         enlargeCenterPage: true,
//                         enlargeFactor: 0.3,
//                         scrollDirection: Axis.horizontal,
//                         onPageChanged: (index,reason){
//
//                         }
//                     ),
//                     itemCount:carimg.length,
//                     itemBuilder:
//                         (BuildContext context, int index, int realIndex) {
//                       //Watch image
//                       return Container(
//                      height: 200,
//                      width: 390,
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(25),
//                           image: DecorationImage(
//                             image: NetworkImage(carimg[index]),
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       );
//                     }),
//               ),
//
//
//               Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 30),
//                     child: Text("Cusines",
//                       style: TextStyle(
//                           fontSize: 25,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black54
//                       )
//                       ,),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 220),
//                     child: IconButton(onPressed: (){
//                        Navigator.of(context).push( MaterialPageRoute(builder: (context)=>Cusine()));
//                     }, icon: Icon(Icons.arrow_forward_sharp,color: Colors.black54,size: 23,)),
//                   )
//                 ],
//               ),
//
//               SizedBox(height: 20,),
//
//               FutureBuilder(
//                   future: getData(),
//                   builder: (BuildContext context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     } else if (snapshot.hasError) {
//                       return Center(child: Text("Error:${snapshot.error}"));
//                     } else if (snapshot.hasData) {
//
//
//                       return Container(
//                         height: 170,
//                         width: 370,
//                         child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: userlist.length,
//                           itemBuilder: (Context, index) {
//                             return GestureDetector(
//                               onTap: (){
//                                 Navigator.of(context).push( MaterialPageRoute(builder: (context)=>pages[index]));
//                               },
//                               child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                   children: [
//                                     Container(
//                                       height: 120,
//                                       width: 120,
//                                       decoration: BoxDecoration(
//                                         color: Colors.white,
//                                         borderRadius: BorderRadius.circular(20),
//                                         image: DecorationImage(image: NetworkImage(userlist[index]["image"]),fit: BoxFit.fill)
//                                       ),
//                                     ),
//                                     Text(
//                                       userlist[index]["cuisine_title"],
//                                       style: TextStyle(fontSize: 20,color: Colors.black54),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       );
//                     }
//                     return Text("No Data Found");
//                   }),
//
//               SizedBox(height: 20,),
//               Padding(
//                 padding: const EdgeInsets.only(right: 250),
//                 child: Text("Foods",
//                   style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black54
//                   )
//                   ,),
//               ),
//
//               SizedBox(height: 20,),
//
//               FutureBuilder(
//                   future: getData2(),
//                   builder: (BuildContext context, snapshot) {
//                     if (snapshot.connectionState == ConnectionState.waiting) {
//                       return Center(child: CircularProgressIndicator());
//                     } else if (snapshot.hasError) {
//                       return Center(child: Text("Error:${snapshot.error}"));
//                     } else if (snapshot.hasData) {
//                       //  final finaldata = snapshot.data!;
//                       // final lastdata= finaldata.indexed;
//
//                       return Container(
//                         height: 700,
//                         width: 390,
//                         child: ListView.builder(
//                           scrollDirection: Axis.vertical,
//                           itemCount: userlist2.length,
//                           itemBuilder: (Context, index) {
//                             return Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: GestureDetector(
//                                 onTap: (){
//                                   Navigator.of(context).push( MaterialPageRoute(builder: (context)=>pages[index]));
//                                 },
//                                 child: Container(
//                                   height: 120,
//                                   width: 370,
//                                   decoration: BoxDecoration(
//                                       color: Colors.white,
//                                       borderRadius: BorderRadius.circular(20)
//                                   ),
//                                   child: Row(
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 20),
//                                         child: Container(
//                                           height: 100,
//                                           width: 100,
//                                           decoration: BoxDecoration(
//                                               borderRadius: BorderRadius.circular(30),
//                                               image: DecorationImage(image: NetworkImage(userlist2[index]["image"]),fit: BoxFit.fill)
//                                           ),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(left: 40),
//                                         child: Text(userlist2[index]["subcategory_title"],style: TextStyle(fontSize: 25,color: Colors.black54),),
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                       );
//                     }
//                     return Text("No Data Found");
//                   }),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
