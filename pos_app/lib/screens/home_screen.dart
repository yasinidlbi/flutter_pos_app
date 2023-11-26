import 'package:flutter/material.dart';

import '../components/button_style.dart';
import '../constants.dart';
import '../models/item.dart';
import '../data/data.dart';
import '../widgets/bestsell_card.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String searchType = "all";

  void _searchTypePressed(String _searchType) {
    setState(() {
      searchType = _searchType;
    });
  }


  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //#region SearchText
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                          width: 0.8,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      labelText: "Enter here to search",
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () {},
                      )),
                ),
              ),
              //#endregion

              //#region SearchType
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //All button
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: TextButton(
                            child: Text(
                              'ALL',
                              style: TextStyle(fontSize: 14),
                            ),
                            style: bs_checkBox(
                                context, searchType == "all" ? true : false),
                            onPressed: () => _searchTypePressed("all"),
                          ),
                        ),
                      ),
                      //Ready for delivery button
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: TextButton(
                            child: Text(
                              'foods',
                              style: TextStyle(fontSize: 14),
                            ),
                            style: bs_checkBox(context,
                                searchType == "foods" ? true : false),
                            onPressed: () =>
                                _searchTypePressed("foods"),
                          ),
                        ),
                      ),
                      //With delivery man button
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: TextButton(
                            child: Text(
                              'clothes',
                              style: TextStyle(fontSize: 14),
                            ),
                            style: bs_checkBox(context,
                                searchType == "clothes" ? true : false),
                            onPressed: () =>
                                _searchTypePressed("clothes"),
                          ),
                        ),
                      ),
                      //in the way button
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: TextButton(
                            child: Text(
                              'electronics',
                              style: TextStyle(fontSize: 14),
                            ),
                            style: bs_checkBox(
                                context, searchType == "electronics" ? true : false),
                            onPressed: () => _searchTypePressed("electronics"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          child: TextButton(
                            child: Text(
                              'mobiles',
                              style: TextStyle(fontSize: 14),
                            ),
                            style: bs_checkBox(
                                context, searchType == "mobiles" ? true : false),
                            onPressed: () => _searchTypePressed("mobiles"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //#endregion
              //#region items
              // Expanded(
              //   child:  _buildItemsCard(),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  // color: Colors.blue,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Items.length,
                      itemBuilder: (BuildContext context, int index) {
                        Item item = Items[index];
                        // return _buildItemsCard(context, item);
                        return ItemCard(item: item,cardHeight: MediaQuery.of(context).size.height*0.4,);
                      }),
                ),
              ),
              //#endregion
              //#region bestsell
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Best sell",
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              // Expanded(
              //   child:  _buildItemsCard(),
              // ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  // color: Colors.blue,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: Items.length,
                      itemBuilder: (BuildContext context, int index) {
                        Item item = Items[index];
                        // return _buildItemsCard(context, item);
                        return BestsellCard(item: item,cardHeight: MediaQuery.of(context).size.height*0.15,);
                      }),
                ),
              ),
              //#endregion
             Align(
               alignment: Alignment.bottomCenter,
               child: Container(
                 height: 20,
                 color: Theme.of(context).primaryColor,
               ),
             )
            ],
          ),
        )
    );
  }
}
