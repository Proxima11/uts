import 'package:flutter/material.dart';

class bookmark extends StatelessWidget {
  const bookmark({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Bookmark',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading:
            IconButton(
              icon: const Icon(Icons.arrow_back),
              color: const Color.fromARGB(255, 255, 204, 0),
              tooltip: 'Back to homepage',
              onPressed: () {

              },
              alignment: Alignment.topLeft,

            ),
            // titleTextStyle: const TextStyle(fontWeight: FontWeight.bold)
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 10),
                height: MediaQuery.of(context).size.height/7,
                width: MediaQuery.of(context).size.width,
                child: FractionallySizedBox(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Image.asset(
                    "lib/images/bookmark.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                    vertical: 5),
                child: const Text('Bookmark empty',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              const SizedBox(
                height: 30,
                child: Text('Let\'s find your favourite food!',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                  ),),
              )
            ],
          ),
        ));
  }
}
