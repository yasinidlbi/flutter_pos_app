import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pos_app/constants.dart';
import 'package:pos_app/screens/item_details_screen.dart';

import '../models/item.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final double cardHeight;

  const ItemCard({Key? key, required this.item, required this.cardHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => ItemDetailsScreen(item: item) )
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 10,
            ),
            // Name
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 20,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0),
                    child: Text(item.name!,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
              ),
            ),
            // details
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 34,
                child:Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0),
                    child: Text(item.details!),
                  ),
              ),
            ),
            // image
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Container(
                width: cardHeight  -20-34 -50 -20  -20 -5- 2,
                height: cardHeight  -20-34 -50 -20  -20 -5-2,
                foregroundDecoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Image(
                        image: AssetImage('assets/images/meat.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // bottom
            Container(
              // margin: EdgeInsets.only(
              //   top: 10.0,
              // ),
              width: double.infinity,
              // height: cardHeight * 0.15,
              height: 50,
              decoration: BoxDecoration(
                color: myprimercolor,
                // borderRadius: BorderRadius.circular(25.0),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0)),
                // border: Border.all(
                //   width: 1.0,
                //   color: Colors.grey.shade200,
                // ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Price
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      '${item.price != null ? item.price.toString() : '0'} \$',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  // add button
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 25.0),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(45.0),
                    ),
                    child: IconButton(
                      padding: EdgeInsets.all(0.0),
                      icon: Icon(Icons.add),
                      iconSize: 30.0,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
