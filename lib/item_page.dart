import 'package:bikechallenge/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bikeBgPrimaryColor,
      height: MediaQuery.of(context).devicePixelRatio,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  color: Colors.white,
                  icon: const Icon(Icons.arrow_back),
                  
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                IconButton(onPressed: (){

                }, 
                icon: const Icon(Icons.favorite_outline),
                color: Colors.white,
                )
              ],
            ),
          ),
          const SizedBox(height: 30,),
           Padding(
            padding:const EdgeInsets.symmetric(horizontal: 1),
            child: Transform(
              transform: Matrix4.translationValues(MediaQuery.of(context).size.width/6, 0, 0),
              child: Container(
              height: MediaQuery.of(context).size.height/2,
              child: const Image(
                image: AssetImage('images/bike2.png'),
                fit: BoxFit.cover,
                alignment: Alignment.centerLeft,
                ),
            ),
              )
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Wrap(
              children: [
                Text(
                  "An art bike is any bicycle modified for creative purposes while still being ridable. It is a type of kinetic sculpture.",
                  style: GoogleFonts.robotoCondensed(
                    textStyle: const TextStyle(
                      color: Colors.white70,
                      fontSize: 26,
                      fontWeight: FontWeight.w200,
                      decoration: TextDecoration.none
                    )
                   )
                  
                  )
              ],
            ),
            ),
          const SizedBox(height: 30,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
          
     
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: bikeBgSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                    
                  ),
                  child: Column(
                    children: [
                      Text("TOP SPEED",style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          decoration: TextDecoration.none,
                        )
                      ),),
                      Text("120 MPH",style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        )
                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(
            
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: bikeBgSecondaryColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: [
                      Text("ENGINE",style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          decoration: TextDecoration.none,
                        )
                      ),),
                      Text("350 CC",style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        )
                      ),),
                    ],
                  ),
                ),
              ),
              SizedBox(
              
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: bikeBgSecondaryColor,
                    borderRadius: BorderRadius.circular(20)
                  ),
                   child: Column(
                    children: [
                      Text("WEIGHT",style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          decoration: TextDecoration.none,
                        )
                      ),),
                      Text("150 KG",style: GoogleFonts.robotoCondensed(
                        textStyle: const TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        )
                      ),),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height:20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){

              },
               child: Text("2")
               ),
                ElevatedButton(
                  onPressed: (){

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: bikeBgSecondaryColor,
                padding: EdgeInsets.fromLTRB(15, 5, 15, 5)
              ),
               child: Text("Add To Cart")
               ),
            ],
          )
        ],
      ),
    );
  }
}
