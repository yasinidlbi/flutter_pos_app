import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/item.dart';

class BestsellCard extends StatelessWidget {
  final Item item;
  final double cardHeight;

  const BestsellCard({Key? key, required this.item, required this.cardHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: cardHeight * 2.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          width: 1.0,
          color: Colors.grey,
        ),
      ),
      child: Row(
        children: [
          // image
          Container(
            width: cardHeight,
            height: cardHeight,
            foregroundDecoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.grey),
              borderRadius:
              // BorderRadius.circular(15),
              BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0)
              ),
            ),
            child: ClipRRect(
              borderRadius:
              //BorderRadius.circular(15),
              BorderRadius.only(
                topLeft: Radius.circular(25.0),
                bottomLeft: Radius.circular(25.0)
              ),
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
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Name
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            item.name!,
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // details
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            item.details!,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //bottom
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: myprimercolor,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25.0),
                          //bottomLeft: Radius.circular(25.0)
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Price
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            '${item.price != null ? item.price.toString() : '0'} \$',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // add button
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
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
                  ),
                ]),
          )

        ],
      ),
    );
  }
}
