import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:uts/detail.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final CarouselController _controller = CarouselController();
    int _currentPage = 0;

    final List _posts_popular = [
      ['lib/images/kfc.jpg','KFC Broadway', '122 Queen Street', 'Fried Chicken, American'],
      ['lib/images/greekhouse.jpg','Greek House', '23 Queen Street', 'Buritos, Greek'],
      ['lib/images/samwon.jpg','Samwon House', '45 Queen Street', 'Hotpot, Korean'],
      ['lib/images/satay.jpeg','Satay Stall', '12 Queen Street', 'Grill, Indonesian'],
      ['lib/images/burgerking.jpg','Burger King', '78 Queen Street', 'Burger, American'],
    ];

    final List _posts_deals = [
      ['lib/images/kebab.jpg','Kebab Turkiye', '144 King Street', 'Kebab, Turkey'],
      ['lib/images/corndog.jpg','Red Dog', '19 King Street', 'Snack, American'],
      ['lib/images/odeng.jpg','Odeng House', '45 Bishop Street', 'Snack, Korean'],
      ['lib/images/mangorice.jpg','Sticky Creamy', '12 Rook Street', 'Dessert, Thailand'],
      ['lib/images/pizza.jpg','Pizza Life', '78 Knight Street', 'Pizza, Italian'],
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Sydney CBD',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading:
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Color.fromARGB(255, 255, 204, 0),
              tooltip: 'Back to homepage',
              onPressed: () {

              },
              alignment: Alignment.topLeft,

            ),
            // titleTextStyle: const TextStyle(fontWeight: FontWeight.bold)
          ),
          body: SizedBox(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_outlined),
                        hintText: 'Search for restaurants...',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        contentPadding: const EdgeInsets.all(10)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Expanded(
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 1,
                                child: Image.asset(
                                  'lib/images/carousel2.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.0),
                                        Colors.black.withOpacity(0.8),
                                      ],
                                      stops: const [
                                        0.3,
                                        1.0
                                      ])),
                            )),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Thai Style',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    '12 Places',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                right: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    4,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentPage = index;
                                          // _controller.jumpToPage(index);
                                        });
                                      },
                                      child: Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index == 0
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Expanded(
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 1,
                                child: Image.asset(
                                  'lib/images/carousel1.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.0),
                                        Colors.black.withOpacity(0.8),
                                      ],
                                      stops: const [
                                        0.3,
                                        1.0
                                      ])),
                            )),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Chinese Style',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    '24 Places',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                right: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    4,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentPage = index;
                                          // _controller.jumpToPage(index);
                                        });
                                      },
                                      child: Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index == 1
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Expanded(
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 1,
                                child: Image.asset(
                                  'lib/images/carousel3.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.0),
                                        Colors.black.withOpacity(0.8),
                                      ],
                                      stops: const [
                                        0.3,
                                        1.0
                                      ])),
                            )),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Turkish Style',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    '8 Places',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 20,
                                right: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    4,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentPage = index;
                                          // _controller.jumpToPage(index);
                                        });
                                      },
                                      child: Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index == 2
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Stack(
                          children: [
                            Expanded(
                              child: FractionallySizedBox(
                                widthFactor: 1,
                                heightFactor: 1,
                                child: Image.asset(
                                  'lib/images/carousel4.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
                                        Colors.black.withOpacity(0.0),
                                        Colors.black.withOpacity(0.8),
                                      ],
                                      stops: const [
                                        0.3,
                                        1.0
                                      ])),
                            )),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    'Korean Style',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: SizedBox(
                                height: 40,
                                width: MediaQuery.of(context).size.width,
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Text(
                                    '15 Places',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                bottom: 15,
                                right: 15,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    4,
                                    (index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentPage = index;
                                          // _controller.jumpToPage(index);
                                        });
                                      },
                                      child: Container(
                                        width: 8,
                                        height: 8,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index == 3
                                              ? Colors.white
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        height: 250,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 4),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        // enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Most Popular',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          TextButton(
                            child: const Text(
                              'See All',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 235, 168),
                                  fontWeight: FontWeight.w400),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => detail(title: "Most Popular", data: _posts_popular,),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15.0),
                      child: ListView.builder(
                        itemCount: _posts_popular.length,
                        scrollDirection: Axis.horizontal,
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
                                      height: 125,
                                      child: FractionallySizedBox(
                                        widthFactor: 1,
                                        heightFactor: 1,
                                        child: Image.asset(
                                          _posts_popular[index][0],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    ListTile(
                                        title: Text(
                                          _posts_popular[index][1],
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
                                              _posts_popular[index][2],
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                            Text(
                                              _posts_popular[index][3],
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
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Meal Deals',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          TextButton(
                            child: const Text(
                              'See All',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 235, 168),
                                  fontWeight: FontWeight.w400),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => detail(title: "Meal Deals", data: _posts_deals,),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                        height: 250,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15.0),
                        child: ListView.builder(
                            itemCount: _posts_deals.length,
                            scrollDirection: Axis.horizontal,
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
                                        height: 125,
                                        child: FractionallySizedBox(
                                          widthFactor: 1,
                                          heightFactor: 1,
                                          child: Image.asset(
                                            _posts_deals[index][0],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      ListTile(
                                          title: Text(
                                            _posts_deals[index][1],
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
                                                _posts_deals[index][2],
                                                style:
                                                TextStyle(color: Colors.grey),
                                              ),
                                              Text(
                                                _posts_deals[index][3],
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
              ]),
            ]),
          ),
        )));
  }
}
