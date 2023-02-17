import 'package:flutter/material.dart';


class MyCardWidget extends StatelessWidget {
  MyCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 170,
            width: 130,
            margin: const EdgeInsets.symmetric(vertical: 60.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: [

                    Container(
                     height: 20,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.grey[500],
                          borderRadius: BorderRadius.circular(15)),
                      child: Align(
                        alignment: Alignment.center,
                      child:  Text(
                        "New",
                        style: TextStyle(color: Colors.white),
                      ),
                      ),
                    ),
                    const Text(
                      "Green Chaire",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(

                      children: [
                        const Icon(Icons.attach_money),
                        const Text("65"),
                        const SizedBox(width: 40,),
                        Row(

                          children: [
                            const Icon(Icons.star),
                            const Text("4.9"),
                          ],
                        )

                      ],
                    ),
                    Container(
                      height: 100,
                      width: 120,

                      child: Image.asset("assets/images/3.jpg"),
                    )
                  ],
                ),
              ],
            ),




          )
      ),
    );
  }
}
