import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';





class CategoryPage extends StatelessWidget {
  final Map<String, dynamic> data = {
    "category": [
      {
        "name": "Italian",
        "image": "https://imgs.search.brave.com/0BABiiJuNuC05jzIeD-aEvIN2Rmd6GCKK5407y8G1bc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTcy/Mzk3MjIxL3Bob3Rv/L3NwYWdoZXR0aS1w/dXR0YW5lc2NhLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz02/Rm1WSm90UU9OXzZC/Z1h0NjVTU2tzZE5P/NEI1Z0ZGWHZkcGFB/aHpEb0p3PQ",
        "foods": ["Pasta", "Pizza", "Risotto"],
        "subcategory": [
          {"item": "Pasta", "img": "https://imgs.search.brave.com/-r09bBDwcDNloOaMS0Dc9G-U0I8YHWfKb6KidJHh1XM/rs:fit:500:0:0:0/g:ce/..."},
          {"item": "Pizza", "img": "https://imgs.search.brave.com/5M-1IDfFP51PXrcXM9jQ4WqX6gMOMer5p4VbbvcmgZU/rs:fit:500:0:0:0/g:ce/..."},
          {"item": "Risotto", "img": "https://imgs.search.brave.com/bZ4p0nQ9BRcUyIg1YFoDgqFUfoSZAw_CvtjRa_XwX9I/rs:fit:500:0:0:0/g:ce/..."},
        ],
      },
      {
        "name": "Mexican",
        "image": "https://imgs.search.brave.com/5uNNLNO9ONmzFVi0dujLjW9R9UUbK0XLlt2cbf2s5Ao/rs:fit:500:0:0:0/g:ce/...",
        "foods": ["Tacos", "Burritos", "Quesadilla"],
        "subcategory": [
          {"item": "Tacos", "img": "https://imgs.search.brave.com/..."},
          {"item": "Burritos", "img": "https://imgs.search.brave.com/..."},
          {"item": "Quesadilla", "img": "https://imgs.search.brave.com/..."},
        ],
      }
    ]
  };

  @override
  Widget build(BuildContext context) {
    List<dynamic> categories = data['category'];

    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 200,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: categories.map<Widget>((category) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        SubcategoryPage(subcategories: category['subcategory']),
                  ),
                );
              },
              child: Image.network(
                category['image'],
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class SubcategoryPage extends StatelessWidget {
  final List<dynamic> subcategories;

  SubcategoryPage({required this.subcategories});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Subcategories')),
      body: ListView.builder(
        itemCount: subcategories.length,
        itemBuilder: (context, index) {
          var subcategory = subcategories[index];
          return Card(
            child: ListTile(
              leading: Image.network(subcategory['img'], width: 50, height: 50),
              title: Text(subcategory['item']),
            ),
          );
        },
      ),
    );
  }
}
