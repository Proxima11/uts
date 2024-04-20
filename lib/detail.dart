import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  // const detail({super.key});
  late final List<dynamic> data;
  late final String title;

  detail({required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading:
              IconButton(
                icon: const Icon(Icons.arrow_back),
                color: Color.fromARGB(255, 255, 204, 0),
                tooltip: 'Back to homepage',
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.topLeft,

              ),
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
     // titleTextStyle: const TextStyle(fontWeight: FontWeight.bold)
          ),
          body: Container(
              height: MediaQuery.of(context).size.height,
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
                              height: 220,
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
        ));
  }
}
