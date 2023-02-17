import 'package:flutter/material.dart';
import 'package:revision/screens/details/button.dart';
import 'package:revision/screens/details/list-of-colors.dart';
import 'package:revision/screens/details/quantity.dart';
class DetailsScreen extends StatelessWidget {
  DetailsScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                color: Colors.white60,
                child: Image.asset("assets/images/chair2.jpg"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Blue Sofa",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.attach_money,
                      ),
                      Text(
                        "65",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This is text can be changed this is text can be changed This is text can be changed this is text can be changed This is text can be changed this is text can be changed",
                style: TextStyle(fontSize: 25, color: Colors.grey),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Color",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Center(child: ListOfColors()),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Quantity",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: CartCounter(),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          Center(
            child: Column(
            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             MyButton(onPressed: () {  }, child: Text("Add to cart"),),
              MyButton(onPressed: () {  }, child: Text("Buy Now"),),
]
      )
    )

          ],
        ),
      )),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Center(
        child: Text(
          "Sofa",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.shopping_bag),
          color: Colors.black,
          onPressed: () {},
        ),
        SizedBox(width: 30),
      ],
    );
  }
}
