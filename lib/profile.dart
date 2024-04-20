import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Profile',
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
          body: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20.0),
                    child: Column(
                      children: [
                        Text("Kristofer Steven", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                        Text("NRP : C14210139", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0),
                    height: 60,
                      width: 60,
                      child: Image.asset("lib/images/profil.png", fit: BoxFit.cover,))
                ],
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10),
                      height: MediaQuery.of(context).size.height/2,
                      width: MediaQuery.of(context).size.width,
                      child: FractionallySizedBox(
                        widthFactor: 1,
                        heightFactor: 1,
                        child: Image.asset(
                          "lib/images/update_art.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      child: const Text('Nikmati layanan lebih dengan update profilmu',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20),
                      height: 50,
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),

                        ),
                        onPressed: null,
                        child: Text('Update Sekarang'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
