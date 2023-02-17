import 'package:flutter/material.dart';
import 'package:revision/constants.dart';
import 'package:revision/screens/details/button.dart';
import 'package:revision/screens/details/details_screen.dart';
import 'package:revision/screens/home/components/button.dart';
import 'package:revision/screens/home/components/category_card.dart';
import 'package:revision/screens/home/components/container.dart';
import 'package:revision/screens/home/components/header.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
          leading: Icon(Icons.menu),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyElevatedButton(
                      onPressed: () {},
                      child: Text("Chair"),
                    ),
                    MyElevatedButton(
                      onPressed: () {
                        Colors.grey;
                      },
                      child: Text("Chair"),
                    ),
                    MyElevatedButton(
                      onPressed: () {},
                      child: Text("Chair"),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                      child: MyCardWidget(),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen()),
                        );
                      }),
                  MyCardWidget(),
                  MyCardWidget(),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
