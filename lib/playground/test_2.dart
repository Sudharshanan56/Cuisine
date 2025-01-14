import 'package:flutter/material.dart';

class SubcategoryList extends StatelessWidget {
  static final Map<String, dynamic> sub = {
    "subcategory": [
      {
        "item": "Pasta",
        "img": "https://imgs.search.brave.com/-r09bBDwcDNloOaMS0Dc9G-U0I8YHWfKb6KidJHh1XM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTIy/NTAwNDU4OS9waG90/by9wYXN0YS13aXRo/LWNyZWFtLXNhdWNl/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz1LdmxnRWhoNDVx/dkRhb196WXA0Qmh2/LUdPUVgxektrQWlh/UTRxejNEUER3PQ",
      },
      {
        "item": "Pizza",
        "img": "https://imgs.search.brave.com/5M-1IDfFP51PXrcXM9jQ4WqX6gMOMer5p4VbbvcmgZU/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTg0/OTQ2NzAxL3Bob3Rv/L3BpenphLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz05N3Jj/MFZJaS1zM21uNHhl/NHhEeTlTLVhKX09o/Ym45MlhhRU1haUlE/X2VZPQ"
      },
      {
        "item": "Risotto",
        "img": "https://imgs.search.brave.com/bZ4p0nQ9BRcUyIg1YFoDgqFUfoSZAw_CvtjRa_XwX9I/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTQ3/NTM3NTc4MS9waG90/by9yaXNvdHRvLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz0y/T2UtdUtMWVZad3Bx/Ymd3OFVSSkVZd2xQ/bloybkw4UjVPVWtN/QUdveldvPQ"
      },

      {
        "item": "Tacos",
        "img": "https://imgs.search.brave.com/Io6T-DJ-j6W-QhRM8z_ruKODJHj_M4Gyw_hogzb-pZY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA2LzkyLzkxLzY1/LzM2MF9GXzY5Mjkx/NjU5NV9zMnhieHZF/ZFV4SVk4cjVuWUNi/akJ0QTlYcjBUSmhE/dS5qcGc"
      },
      {
        "item": "Burritos",
        "img": "https://imgs.search.brave.com/f7Adp76lMxM0vuYm0B214GlZhL8FsFOHrtzh7w4Ypc0/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAwLzMyLzM5LzAx/LzM2MF9GXzMyMzkw/MTEwX2wzRmpSejB6/dlBpTm5vRkU4MVdB/NG0yRHVKQThKckJ1/LmpwZw"
      },
      {
        "item": "Quesadilla",
        "img": "https://imgs.search.brave.com/lHjkB7q3yx8Psmpfztb6p4ZHE2GK8tElauswAZtpX1w/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvOTEy/NzE2NTA4L3Bob3Rv/L3F1ZXNhZGlsbGEt/d2l0aC1zYXVjZXMu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PUxOcVRjYjJaT3ZT/cVl1dy1DaEZRSnJv/NUR5QVlodGxGTGEt/M1g5enhHNXM9"
      },

      {
        "item": "Biryani",
        "img": "https://imgs.search.brave.com/rf_HPcqH22_S-amQRVuYy7lXA3KizQo04E64uMg85nE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzUxLzA3LzI1/LzM2MF9GXzU1MTA3/MjU1OF9yRU51eDlm/cWxlYzVHUEJKU2FU/b1Q2OXhqY1lpR3hq/ZS5qcGc"
      },

      {
        "item":"Sushi",
        "img":"https://imgs.search.brave.com/z7UxYKB7c27MDmxtm7X6uxZsyVukJwNbu6hj7P1c9_g/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzQ2Lzg1LzE4/LzM2MF9GXzQ2ODUx/ODU2X2xmWHFwQWxP/MDd5ZEU4MmVGaVI0/WXQwUjZoZGdNQUJ4/LmpwZw"
      },
      {
        "item":"Ramen",
        "img":"https://imgs.search.brave.com/sqINB7DM-yMjLMOOJHqMeYbuf8cNQuzmcnvfg_mKZ5I/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAxLzc2LzkxLzQw/LzM2MF9GXzE3Njkx/NDA5N19vd0p3b3pl/ZFVJemVhSmFRb28x/Zmppd0pQdXdWS3p1/ei5qcGc"
      },
      {
        "item":"Tempura",
        "img":"https://imgs.search.brave.com/Rtnq2U-Yp_pCcueTjK3VL_2Um74Nf0LX_qdQ2r1QSss/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/Zmlyc3QtdGVtcHVy/YS1sZWFybmVkLWEt/bG90LWFuZC13b3Vs/ZC1sb3ZlLXRpcHMt/djAtYXk1eWlwczJx/OHhiMS5qcGc_d2lk/dGg9NjQwJmNyb3A9/c21hcnQmYXV0bz13/ZWJwJnM9YmZjNmQ5/Y2UzYTA2ZmUxZmY5/ZDdmMzU1YjNlMmIx/ODZkYzhjNmM1Nw"
      },

      {
        "item":"Dim Sum",
        "img":"https://imgs.search.brave.com/PrK2rTikuVoY0B-6sPoM1GnD9bS4ennwGUiFQwQuBC4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQ2/MDE1Mjg0L3Bob3Rv/L2ZyZXNoLWRpbS1z/dW0uanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPTNfWEVmTVJ3/VGZsODB0WnhVdG9z/TkdLYllNNC1SZDhN/NDFPT3Vxb2xLR1E9"
      },
      {
        "item":"Kung Pao",
        "img":"https://imgs.search.brave.com/m200rvi4RgAm_o7L7_b1qLPUNGjhmRBDODGRZw_LPIw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90aGV3/b2tzb2ZsaWZlLmNv/bS93cC1jb250ZW50/L3VwbG9hZHMvMjAx/OS8wNC9rdW5nLXBh/by1jaGlja2VuLTEx/LTU5OXg1OTkuanBn"
      },
      {
        "item":"Fried Rice",
        "img":"https://imgs.search.brave.com/qbOXnpg6GHNGghc0qS6N2nMH_xzbTSYIscBgB_A0sfc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/c2VyaW91c2VhdHMu/Y29tL3RobWIvQXZU/NndkS3hoaDNiZWNR/TmNrUzVqaGZYajdJ/PS8xNTAweDAvZmls/dGVyczpub191cHNj/YWxlKCk6bWF4X2J5/dGVzKDE1MDAwMCk6/c3RyaXBfaWNjKCkv/X19vcHRfX2Fib3V0/Y29tX19jb2V1c19f/cmVzb3VyY2VzX19j/b250ZW50X21pZ3Jh/dGlvbl9fc2VyaW91/c19lYXRzX19zZXJp/b3VzZWF0cy5jb21f/X2ltYWdlc19fMjAx/Nl9fMDFfXzIwMTYw/MjA2LWZyaWVkLXJp/Y2UtZm9vZC1sYWIt/NjUtMTUwMHgxMTI1/LTNmMTFjMjIzOWM0/NDQxYWE5YmYzYjY1/YzczY2ZiMmQyLmpw/Zw"
      },

      {
        "item":"Croissant",
        "img":"https://imgs.search.brave.com/eo356RJrad-qyrnvHl3LDnSU5q11-RbZfrK47b8amdM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNDg5/NjQ3OTYxL3Bob3Rv/L2Nyb2lzc2FudHMu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PVg4UzZWSkd5dEpO/aDk0QW9abkxFZDl1/VGExTTBuaXZTY1Zr/RjNMdDZLamc9"
      },
      {
        "item":"Crêpe",
        "img":"https://imgs.search.brave.com/mysT8Z6X35_N0N5XeUhfa-9nUvzpwqlHJYBV7OWxpkw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMwMS5ueXQuY29t/L2ltYWdlcy8yMDE2/LzA1LzI4L2Rpbmlu/Zy8yOENPT0tJTkct/Q1JFUEVTLVNVWkVU/VEUxLzI4Q09PS0lO/Ry1DUkVQRVMtU1Va/RVRURTEtbWVkaXVt/VGhyZWVCeVR3bzIx/MC5qcGc_cXVhbGl0/eT03NSZhdXRvPXdl/YnA"
      },
      {
        "item":"Coq au Vin",
        "img":"https://imgs.search.brave.com/L9maRxjaQ6R3vWuqO655o6xy0hlpvNcJ--Eb0b5HnBI/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy9jb3Et/YXUtdmluLWxlYWQt/NjY5MDIzYmRkN2Zl/Yy5qcGc_Y3JvcD0x/eHc6MXhoO2NlbnRl/cix0b3AmcmVzaXpl/PTk4MDoq"
      }


    ]
  };

  @override
  Widget build(BuildContext context) {
    final List<dynamic> subcategories = sub['subcategory'];

    return Scaffold(
      appBar: AppBar(
        title: Text("Subcategory List"),
      ),
      body: // First, change your ListView.builder section to this:
      Container(
        height: 500, // Fixed height
        child: ListView.builder(
          itemCount: sub['subcategory'].length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final subcategory = sub['subcategory'][index] as Map<String, dynamic>;
            final String name = subcategory['item'] ?? '';
            final String imageUrl = subcategory['img'] ?? '';

            return Container(
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.error);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      )
    );
  }
}


