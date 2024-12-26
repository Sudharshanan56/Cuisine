

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:overflow_text_animated/overflow_text_animated.dart';
import 'package:typewrite_text/typewrite_text.dart';




class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Food Categories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static final Map<String, dynamic> data = {
    "category": [
      {
        "name": "Italian",
        "image": "https://imgs.search.brave.com/0BABiiJuNuC05jzIeD-aEvIN2Rmd6GCKK5407y8G1bc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTcy/Mzk3MjIxL3Bob3Rv/L3NwYWdoZXR0aS1w/dXR0YW5lc2NhLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz02/Rm1WSm90UU9OXzZC/Z1h0NjVTU2tzZE5P/NEI1Z0ZGWHZkcGFB/aHpEb0p3PQ",
        "foods": ["Pasta", "Pizza", "Risotto"],
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
        ],
      },
      {
        "name": "Mexican",
        "image": "https://imgs.search.brave.com/5uNNLNO9ONmzFVi0dujLjW9R9UUbK0XLlt2cbf2s5Ao/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90aGVw/bGFuZXRkLmNvbS9p/bWFnZXMvQmVzdC1N/ZXhpY2FuLUZvb2Rz/LU1vbGUuanBn",
        "foods": ["Tacos", "Burritos", "Quesadilla"],
        "subcategory": [
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
        ]
      },
      {
        "name": "Indian",
        "image": "https://imgs.search.brave.com/7GLfwMgvQhQx-VUtwQrEQr8piVuUSKGy6gJt0ckaJoA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy85/Lzk3L1NvdXRoX0lu/ZGlhbl9mb29kX2N1/aXNpbmUuanBn",
        "foods": ["Biryani", "Butter Chicken", "Paneer Tikka"],
        "subcategory": [
          {
            "item": "Biryani",
            "img": "https://imgs.search.brave.com/rf_HPcqH22_S-amQRVuYy7lXA3KizQo04E64uMg85nE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1LzUxLzA3LzI1/LzM2MF9GXzU1MTA3/MjU1OF9yRU51eDlm/cWxlYzVHUEJKU2FU/b1Q2OXhqY1lpR3hq/ZS5qcGc"
          },
        ]
      },
  {
        "name":"Japanese",
        "image":"https://imgs.search.brave.com/17AUi5KJzoalGJQTlbmMQNStfexafPi27-jf-K-IJ90/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNDk3/MDIyMzQyL3Bob3Rv/L2phcGFuZXNlLXJl/c3RhdXJhbnQtc3Vz/aGktZGlzaC5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9a2lG/SHIyWV9XUmVOX0Fx/d1FFeENlNWFjaWNr/a0JIaEltRXRGaTU5/Q3lNUT0",
        "subcategory":[
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
          }
        ]

      },

      {
        "name":"Chinese",
        "image":"https://imgs.search.brave.com/sMng36u9dbqtvzDvcc6hmdtP8Dx5HtAvYqAZApSUmhE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9jaG9wc3RpY2tz/LXBpY2tpbmctY2hp/bmVzZS1mb29kLXBs/YXRlLW1lYWwtbWVh/dF81Mzg3Ni0zODU4/MzAuanBnP3NlbXQ9/YWlzX2h5YnJpZA",
        "subcategory":[
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
          }
        ]
      },
      {
        "name":"French",
        "image":"https://imgs.search.brave.com/DQZLbg2_ADRrW_i8JWwr5fm1kY32o9YQ0MInzopyz4M/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE5/NDgzNTA3L3Bob3Rv/L2ZyZW5jaC1yYXRh/dG91aWxsZS5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9SE9q/RUpWZlBGdVEyNXBz/eE5JZVR6UEVtWmNQ/c05FaGE3OVRackhC/ZjAwRT0",
        "subcategory":[
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
      }
    ]
  };
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
    final List<dynamic> categories = data['category'];
    const overflowText =
        'Savor the finest cuisines from around the world';
    const labelStyle = TextStyle(
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.red);
    const descriptionStyle = TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white);
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   //title: const Text('Food Categories'),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Column(children: [
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Container(
                      height: 50,
                      width: 450,
                      child: Center(
                        child: TextFormField(

                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(Icons.search_sharp,size: 30,color: Colors.white38,),
                            hintText: "Looking for something..!!!",
                            hintStyle: TextStyle(color: Colors.white38,fontSize: 20),
                            filled: true,
                            fillColor: Colors.white38,
                          ),

                        ),
                      ),
                    ),

                  ),
                  SizedBox(
                      height: 40
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 100),
                  //   child: Text("Welcome ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 30,color: Colors.white),),
                  // ),
                  OverflowTextAnimated(
                    text: overflowText,
                    style: descriptionStyle,
                    animation: OverFlowTextAnimations.infiniteLoop,
                    loopSpace: 30,
                  ),

                  SizedBox(
                      height: 30
                  ),


                ],),
              ),
            ),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                 // border: Border.all()
              ),
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    scrollDirection: Axis.horizontal,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
        
        
                  ),
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index, int realIndex)
                  {
                    var category = data['category'][index];
                    return Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image:  NetworkImage(category['image']),fit: BoxFit.fill
                          )
                      ),
                    );
                  }
              ),
            ),
            //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            Row(
              children: [
                //Text("Cuisines",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                TypewriteText(
                  linesOfText: ['Whats your Favourite', 'Whats your Favourite', 'Whats your Favourite'],
                  textStyle: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
                  reverseAnimationDuration: Duration.zero,
                  beforeAnimationDuration: Duration.zero,
                )
              ],
            ),
            Container(
              height: 300, // Fixed height for horizontal list
              child: ListView.builder(
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final String name = category['name'];
                  final String imageUrl = category['image'];
                  final List<dynamic> subcategories = category['subcategory'];
        
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubCategoryPage(
                            categoryName: name,
                            subcategories: subcategories,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 200, // Fixed width for each card
                      child: Card(
                        margin: const EdgeInsets.all(12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(12),
                              ),
                              child: Image.network(
                                imageUrl,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const Icon(Icons.error, size: 50, color: Colors.red);
                                },
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20,),
            // First, change your ListView.builder section to this:
            // Container(
            //   height: 500, // Fixed height
            //   child: ListView.builder(
            //     itemCount: sub['subcategory'].length,
            //     scrollDirection: Axis.vertical,
            //     itemBuilder: (context, index) {
            //       final subcategory = sub['subcategory'][index] as Map<String, dynamic>;
            //       final String name = subcategory['item'] ?? '';
            //       final String imageUrl = subcategory['img'] ?? '';
            //
            //       return GestureDetector(
            //         onTap: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => SubCategoryPage(
            //                 categoryName: name,
            //                 subcategories: subcategories,
            //               ),
            //             ),
            //           );
            //         },
            //         child: Container(
            //           height: 150,
            //           padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            //           child: Row(
            //             children: [
            //               ClipRRect(
            //                 borderRadius: BorderRadius.circular(30),
            //                 child: Container(
            //                   height: 100,
            //                   width: 100,
            //                   child: Image.network(
            //                     imageUrl,
            //                     fit: BoxFit.cover,
            //                     errorBuilder: (context, error, stackTrace) {
            //                       return Icon(Icons.error);
            //                     },
            //                   ),
            //                 ),
            //               ),
            //               Expanded(
            //                 child: Padding(
            //                   padding: const EdgeInsets.only(left: 16),
            //                   child: Text(
            //                     name,
            //                     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            //                     overflow: TextOverflow.ellipsis,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // )
            Container(
              height: 500, // Fixed height
              child: ListView.builder(
                itemCount: sub['subcategory'].length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final subcategory = sub['subcategory'][index] as Map<String, dynamic>;
                  final String name = subcategory['item'] ?? '';
                  final String imageUrl = subcategory['img'] ?? '';

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SubcategoryDetailPage(
                            name: name,
                            imageUrl: imageUrl,
                          ),
                        ),
                      );
                    },
                    child: Container(
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
                    ),
                  );
                },
              ),
            )



          ]
    ),
    )
    );
  }
}

class SubCategoryPage extends StatelessWidget {
  final String categoryName;
  final List<dynamic> subcategories;

  const SubCategoryPage({
    Key? key,
    required this.categoryName,
    required this.subcategories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(categoryName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Colors.blueAccent,
      ),
      body:Container(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 8.0, // Space between columns
            mainAxisSpacing: 8.0, // Space between rows
            childAspectRatio: 3 / 4, // Aspect ratio of each grid item (width / height)
          ),
          itemCount: subcategories.length,
          padding: const EdgeInsets.all(8.0),
          itemBuilder: (context, index) {
            final subcategory = subcategories[index];
            final String itemName = subcategory['item'];
            final String itemImage = subcategory['img'];

            return Card(
              margin: const EdgeInsets.all(4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      itemImage,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.error,
                          size: 50,
                          color: Colors.red,
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        itemName,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                        maxLines: 1,
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

      // ListView.builder(
      //   itemCount: subcategories.length,
      //   itemBuilder: (context, index) {
      //     final subcategory = subcategories[index];
      //     final String itemName = subcategory['item'];
      //     final String itemImage = subcategory['img'];
      //
      //     return Card(
      //       margin: const EdgeInsets.all(8),
      //       child: ListTile(
      //         leading: ClipRRect(
      //           borderRadius: BorderRadius.circular(8.0),
      //           child: Image.network(
      //             itemImage,
      //             height: 60,
      //             width: 60,
      //             fit: BoxFit.cover,
      //             errorBuilder: (context, error, stackTrace) {
      //               return const Icon(Icons.error, size: 50, color: Colors.red);
      //             },
      //           ),
      //         ),
      //         title: Text(
      //           itemName,
      //           style: const TextStyle(
      //             fontSize: 18,
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),

    );
  }
}

// import 'package:flutter/material.dart';

class SubcategoryDetailPage extends StatelessWidget {
  final String name;
  final String imageUrl;

  SubcategoryDetailPage({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, size: 200);
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              name,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
