import 'package:flutter/material.dart';
import 'package:revision/constants.dart';



class CartCounter extends StatefulWidget {

  @override
  _CartCounterState createState() => _CartCounterState();}


class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
   mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          color: Colors.white,
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutlineButton(
            icon: Icons.add,
            color: Colors.white,
            press: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData? icon, Function ?press,  Color? color}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white10,
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: (){},
        child: Icon(icon),

      ),
    );
  }
}