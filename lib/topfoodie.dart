
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class topfoodie extends StatelessWidget {
  topfoodie({super.key});
  final List data = [
    ['lib/images/kebab.jpg','Kebab Turkiye', '144 King Street', 'Kebab, Turkey'],
    ['lib/images/corndog.jpg','Red Dog', '19 King Street', 'Snack, American'],
    ['lib/images/odeng.jpg','Odeng House', '45 Bishop Street', 'Snack, Korean'],
    ['lib/images/mangorice.jpg','Sticky Creamy', '12 Rook Street', 'Dessert, Thailand'],
    ['lib/images/pizza.jpg','Pizza Life', '78 Knight Street', 'Pizza, Italian'],
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: const Text(
                'Top Foodie',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Color.fromARGB(255, 255, 204, 0),
                tooltip: 'Back to homepage',
                onPressed: () {},
                alignment: Alignment.topLeft,
              ),
              // titleTextStyle: const TextStyle(fontWeight: FontWeight.bold)
            ),
            body: SingleChildScrollView(
                child: Column(children: <Widget>[Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
              height: 40,
            child:ListView(
              scrollDirection: Axis.horizontal,
              children: [
                TextButton(onPressed: () {}, child: const Text("Near me", style: TextStyle(fontSize: 18),)),
                TextButton(onPressed: () {}, child: const Text("Rated 4.5+", style: TextStyle(fontSize: 18),)),
                TextButton(onPressed: () {}, child: const Text("Cusines", style: TextStyle(fontSize: 18),)),
                TextButton(onPressed: () {}, child: const Text("Prices", style: TextStyle(fontSize: 18),)),
                TextButton(onPressed: () {}, child: const Text("Dish Promo", style: TextStyle(fontSize: 18),)),
                TextButton(onPressed: () {}, child: const Text("Open now", style: TextStyle(fontSize: 18),)),
                TextButton(onPressed: () {}, child: const Text("Pickup", style: TextStyle(fontSize: 18),)),
              ],
            )),
                  Positioned(
                    bottom: 100,
                      child: Container(
                          height: MediaQuery.of(context).size.height-220,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15.0),
                      child: ListView.builder(
                          itemCount: data.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Expanded(child: Container(
                              width: 220,
                              child: Card(
                                surfaceTintColor: Colors.white,
                                child: Wrap(
                                  children: <Widget> [
                                    Container(
                                      height: MediaQuery.of(context).size.height/5,
                                      child: FractionallySizedBox(
                                        widthFactor: 1,
                                        heightFactor: 1,
                                        child: Image.asset(
                                          data[index][0],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                        title: Text(
                                          data[index][1],
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        subtitle: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              data[index][2],
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                            Text(
                                              data[index][3],
                                              style:
                                              TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        )),

                                  ],
                                ),
                              ),
                            ));
                          }
                      )
                  ),
                  )]))));
  }
}
