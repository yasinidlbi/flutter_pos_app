import 'package:flutter/material.dart';

import '../constants.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
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
      body:  Text("orders screen")
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
