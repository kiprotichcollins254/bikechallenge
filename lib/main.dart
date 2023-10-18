import 'package:bikechallenge/item_page.dart';
import 'package:bikechallenge/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/item':(BuildContext context) => const ItemPage()
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: bikeBgPrimaryColor),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // create two stack
    var myMenu = Container(
      width: MediaQuery.of(context).size.width/4,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          color: bikeBgSecondaryColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: Column(
        children: [
          const SizedBox(height: 40),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/item');
              },
              // child: Lottie.asset('assets/icons/menu.json',height: 60,width: 60),
              // ignore: prefer_const_constructors
              child: Icon(Icons.menu_open_sharp,color: Colors.white,size: 45,),
              
              )
        ],
      ),
    );
    var myContainer = Container(
      color: bikeBgPrimaryColor,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // const SizedBox(height: 100,),
          SizedBox(height: MediaQuery.of(context).size.height/4,),
          Card(
            elevation: 8.8,
            // shadowColor: bikeBgPrimaryColor,
            color: bikeBgSecondaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            child: SizedBox(
              height: 400,
              width: 250,
              child: Column(
                 children: [
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 8.0, 15, 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Row(
                          children: [
                            IconButton(onPressed: (){
                  
                            }, icon: const Icon(Icons.star),
                            color: Colors.yellow.shade700,
                            iconSize: 30,
                            ),
                            const Text("45",style: TextStyle(fontSize: 30,color: Colors.white),)
                          ],
                         ),
                        IconButton(onPressed: (){
                  
                        }, icon: const Icon(
                          Icons.favorite_outline),
                          color: Colors.white,
                          iconSize: 35,
                          )
                      ],
                    ),
                  ),

                  const SizedBox(height: 20,),
                  // Transform(
                  // transform: Matrix4.identity()..translate(35,0,0),
                  // child: Image.asset('images/bike.jpg',),
                  // ),
                  
                     Container(
                      height: 200,
                      width: 350,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/bike2.png'),
                          fit: BoxFit.cover
                          )
                      ),
                      ),
                  

                  const SizedBox(height: 20,),
                  
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      
                      children: [
                         const Column(
                          children: [
                            Text("ART BIKE",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("KES 10000",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)
                          
                          ],
                         ),
                             ElevatedButton(onPressed: (){
                                Navigator.of(context).pushNamed('/item');
                             },  style: ElevatedButton.styleFrom(
                                  backgroundColor: bikeBgSecondaryColor,
                                  padding: const EdgeInsets.all(20.0),
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))
                                ),
                                child: const Icon(
                                  Icons.shopping_basket_sharp,color: Colors.white,))
                            ],
                          ),
                    ),
                    ],
                 

              )
            ),
           
          ),
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
              children: [
                ElevatedButton(onPressed: (){
          
                }, 
                
               style: ElevatedButton.styleFrom(
                  backgroundColor: bikeBgSecondaryColor,
                  padding: const EdgeInsets.all(25.0),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))
                ),
                child: const Icon(
                  Icons.shopping_bag,color: Colors.white,)
                  
                ),
                 ElevatedButton(onPressed: (){
          
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: bikeBgSecondaryColor,
                  padding: const EdgeInsets.all(25.0),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))
                ),
                child: const Icon(
                  Icons.shopping_bag,color: Colors.white,)
                  ),
                 ElevatedButton(onPressed: (){
          
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: bikeBgSecondaryColor,
                  padding: const EdgeInsets.all(25.0),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0)))
                ),
                child: const Icon(
                  Icons.shopping_bag,color: Colors.white,)
                  ),
                 
              ],
            ),
          )
        ],
      ),
      // child: const Text("text 2"),
    );
    var titleText = SizedBox(
      child: Wrap(children: [
        Text(
          "BIKES\nCOLLECTIONS",
          style: GoogleFonts.robotoCondensed(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 45,
                  decoration: TextDecoration.none)),
        ),
        const SizedBox(
          height: 10,
        ),
       
      ]),
    );
    return Stack(
      children: [
        Transform(
          transform: Matrix4.translationValues(70, 0, 0),
          child: myContainer,
        ),
        Transform(
          transform: Matrix4.translationValues(0, 0, 0),
          child: myMenu,
        ),
        Transform(
          transform: Matrix4.translationValues(50, 100, 0),
          child: titleText,
        )
      ],
    );
  }
}
