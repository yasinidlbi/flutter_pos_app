import 'package:flutter/material.dart';

import '../components/button_style.dart';
import '../constants.dart';
import '../models/item.dart';

class ItemDetailsScreen extends StatefulWidget {
  final Item item;
  const ItemDetailsScreen({Key? key, required this.item}) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double bodyHeight = (MediaQuery.of(context).size.height //screen
        - MediaQuery.of(context).padding.top // safe area
        - AppBar().preferredSize.height //AppBar
    );

    return  Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: myprimercolor,
          title: Row(
            children: [
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                child: Image(
                  image: AssetImage('assets/images/logo.png'),
                  width: 50,
                  fit: BoxFit.fitWidth,
                  color: Colors.white,
                ),
              ),
              Text(
                "Driver App",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          actions: [
            // Obx(
            //       () => Badge(
            Badge(
              // label: Text('\$${controller.total}'),
              label: Text('1'),
              alignment: AlignmentDirectional.center,
              child:
              IconButton(icon: Icon(Icons.shopping_cart),
                onPressed: () {  },),
            ),
            // ),
          ],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                       height: bodyHeight * 0.35,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      color: myprimercolor,
                      // border: Border.all(color: Colors.grey)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth * 0.4,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 0, bottom: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Title
                                Text(
                                  widget.item.name! ,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                      color: Colors.white,

                                  ),
                                ),
                                // Price
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Price',
                                      style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      widget.item.price!.toString() ,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.white,

                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        // Picture
                        SetImage( url: widget.item.image!,),
                      ],
                    ),
                  ),
                  // Flexible(
                  //   child:
                    Stack(
                      children: [
                        Container(
                          height: bodyHeight * 0.65,
                          color:  myprimercolor,
                        ),
                        Container(
                            height: bodyHeight * 0.65,
                            width: screenWidth,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(75)),
                              color: Colors.white,
                              // border: Border.all(color: Colors.grey)
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.all(35),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //details
                                  Expanded(
                                    child: Text(
                                       widget.item.details!,
                                      // widget.item.details! + widget.item.details! +widget.item.details!,
                                       style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        // color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ),
                                  // Spacer(),
                                   Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              // minus button
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                width: 35,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  color: mysecondarycolor,
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                child: IconButton(
                                                  padding: EdgeInsets.all(0.0),
                                                  icon: Icon(Icons.remove),
                                                  iconSize: 30.0,
                                                  color: Colors.white,
                                                  onPressed: () {},
                                                ),
                                              ),
                                              //#region Count
                                              Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                                child: SizedBox(
                                                  width: 35,
                                                  height: 35,
                                                  child: TextField(
                                                    decoration: InputDecoration(
                                                        // contentPadding: EdgeInsets.symmetric( vertical: 15.0),
                                                        fillColor: Colors.white,
                                                        filled: true,
                                                        border: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(10.0),
                                                          borderSide: BorderSide(
                                                            width: 0.8,
                                                            color: Theme.of(context).primaryColor,
                                                          ),
                                                        ),
                                                        labelText: "0",
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              //#endregion
                                              // add button
                                              Container(
                                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                                width: 35,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  color: mysecondarycolor,
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                child: IconButton(
                                                  padding: EdgeInsets.all(0.0),
                                                  icon: Icon(Icons.add),
                                                  iconSize: 30.0,
                                                  color: Colors.white,
                                                  onPressed: () {},
                                                ),
                                              )
                                            ],
                                          ),

                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                                              width: 35,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.all(Radius.circular(75)),
                                                // color: Colors.red,
                                                border: Border.all(color: Colors.grey)
                                              ),
                                              child: IconButton(
                                                icon: Icon(Icons.shopping_cart,size: 20),
                                                onPressed: () {  },),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 10.0, vertical: 5.0),
                                              child: Container(
                                                width: screenWidth * 0.5,
                                                child: TextButton(
                                                  child: Text(
                                                    'CHECKOUT',
                                                    style: TextStyle(fontSize: 18),
                                                  ),
                                                  style: bs_flatFill(context),
                                                  // onPressed: () {},
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ),

                                          ],
                                        )
                                      ],
                                    ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  // ),
                ],
              ),

            ],
          ),
    );
  }
}

class SetImage extends StatelessWidget {
  final String url;
  const SetImage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child:  Container(
        width: 150,
        height: 150,
        foregroundDecoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
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
    );
  }
}

