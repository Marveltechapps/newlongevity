import "package:animated_text_kit/animated_text_kit.dart";



import "package:get/get.dart";
import "package:flutter/material.dart";
import "package:longevity_life/Route/route_name.dart";

class SpecialScreen extends StatelessWidget {
  const SpecialScreen({super.key});


@override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        // Check if the width is less than a certain value, let's say 600 for a typical mobile screen in portrait mode.
        bool isMobileView = constraints.maxWidth < 600;

        return Container(
          width: constraints.maxWidth,
          height: isMobileView
              ? 600
              : 300, // Increase height for mobile view to accommodate stacked layout.
        
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(top: 20),
          child: isMobileView
              ? buildMobileLayout(context)
              : buildDesktopLayout(context),
        );
      },
    );
  }









  Widget buildDesktopLayout(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
 const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);
    return Scaffold(
      
      body:SafeArea(

        child: Container(
          width: width,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/special_img.png"),
              fit:BoxFit.fill,
            ),
            
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Container(
                  padding:  EdgeInsets.all(width * 0.035),
                  height: width * 0.25,
                  width: width * 0.25,
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    // image: DecorationImage(image: AssetImage("assets/logo.png"),fit: BoxFit.fill),
                    borderRadius: BorderRadius.all(Radius.circular(width *0.25),),
                    border: Border.all(width: 3,color: Color(0xff289847),)
                  ),
                  child: Image.asset("assets/logo.png",
                  fit: BoxFit.fill,
                  ),
                    ),
                  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('Our Brand',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: Color(0xffEF0000),
                             
                               decorationThickness: 2,
                              decorationColor: Color(0xffEF0000),
                              decorationStyle: TextDecorationStyle.solid,
                              
                              ),
                              
                              ),
                              //  SizedBox(
                              //   // width: height * 0.25,
                              //   height: height * 0.25,
                              //    child: TextButton(onPressed: (){Get.toNamed(homeScreen);}, 
                              //     child:const Text('Dolphincity',style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold,color: Color(0xff0019F6),
                              //                              // decoration: TextDecoration.underline,
                              //                              // decorationColor: Color(0xff0019F6),
                              //                              // decorationStyle: TextDecorationStyle.solid,
                              //                              // height: 1.5
                              //                              ),
                                                           
                              //                              ), ),
                              //  ),
                              SizedBox(height: 20,),
                              
            
                              SizedBox(
                                // width: 250.0,
                                child: AnimatedTextKit(
                                  repeatForever: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                      'Dolphin city',
                                      textStyle: colorizeTextStyle,
                                      colors: colorizeColors,
                                    ),
                                    
                                  ],
                                  isRepeatingAnimation: true,
                                  onTap: () {
                                  Get.toNamed(homeScreen);
                                  },
                                ),
                              ),
                               SizedBox(width: 10.0,),   
                                     
                                    Align(
                                        alignment: Alignment.centerLeft, // Aligns the IconButton to the left side of the screen
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0), // Adds some padding around the IconButton
                                          child: IconButton(
                                            icon: Icon(Icons.touch_app),
                                            iconSize: 20.0, // Size of the icon
                                            onPressed: () {
                                              // Action to perform on button press
                                            Get.toNamed(homeScreen);
                                            },
                                          ),
                                        ),
                                      ),
             
                                  SizedBox(width: 10.0,),  
                                  Text('click here')
                                ],
                              ),
                            
                              
                          
                            Column(
                             crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                               
                             const  Text('Other Brand',style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,color: Color(0xffEF0000),
                              
                              decorationThickness: 2,
                              decorationColor: Color(0xffEF0000),
                              decorationStyle: TextDecorationStyle.solid,
                              
                              ),
                              
                              ),
                              // const SizedBox(height: 15,),
                              SizedBox(
                                width: height * 0.30,
                                height: height * 0.25,
                                child: Image.asset("assets/come_soon.png"),
                              )
                              ],
                            ),
                              ],),
            ],),
          ),
        ),
      ),
    );
  }
}



  Widget buildMobileLayout(BuildContext context) {
    // A more vertical layout for mobile screens
      double width = MediaQuery.of(context).size.width;
 const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
   decoration: TextDecoration.none,
);
    return Container(
              width: width,
              height: double.infinity,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/special_img.png"),
                  fit:BoxFit.fill,
                ),
                
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Container(
                    padding:  EdgeInsets.all(width * 0.070),
                    height: width * 0.50,
                    width: width * 0.50,
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      // image: DecorationImage(image: AssetImage("assets/logo.png"),fit: BoxFit.fill),
                      borderRadius: BorderRadius.all(Radius.circular(width * 1.00),),
                      border: Border.all(width: 3,color: const Color(0xff289847),)
                    ),
                    child: Image.asset("assets/logo.png",
                    fit: BoxFit.fill,
                    ),
            ),
            const SizedBox(height: 40.0,),
                               const Text('Our Brand',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color(0xffEF0000),
                                       decoration: TextDecoration.none,
                                         decorationThickness: 2,
                                        decorationColor: Color(0xffEF0000),
                                        decorationStyle: TextDecorationStyle.solid,
                                        
                                        ),
                                        
                                        ),
                                                  
      //  SizedBox(height: 20.0,),
      //                                    TextButton(
      //                                     onPressed: (){Get.toNamed(homeScreen);}, 
      //                                                        child:const Text(
      //                                                          'Dolphincity',style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold,color: Color(0xff0019F6),
      //                                      // decoration: TextDecoration.underline,
      //                                      // decorationColor: Color(0xff0019F6),
      //                                      // decorationStyle: TextDecorationStyle.solid,
      //                                      // height: 1.5
      //                                      ),
                                           
      //                                      ), ),


                                                  
                             SizedBox(
                                // width: 250.0,
                                child: AnimatedTextKit(
                                  repeatForever: true,
                                  animatedTexts: [
                                    ColorizeAnimatedText(
                                      'Dolphin city',
                                      
                                      textStyle: colorizeTextStyle,
                                      colors: colorizeColors,
                                    ),
                                    
                                  ],
                                  isRepeatingAnimation: true,
                                  onTap: () {
                                  Get.toNamed(homeScreen);
                                  },
                                ),
                              ),
                                
 
              
                                  const Text('click here',style: TextStyle(fontSize: 10,
                                                                      decoration: TextDecoration.none,
                                                                      decorationThickness: 2,
                                                                      decorationColor: Color(0xffEF0000),
                                                                      decorationStyle: TextDecorationStyle.solid,
                                                                      
                                                                      ),
                                                                      ),
                                                
                                                  const  Text('Other Brand',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Color(0xffEF0000),
                                                                      decoration: TextDecoration.none,
                                                                      decorationThickness: 2,
                                                                      decorationColor: Color(0xffEF0000),
                                                                      decorationStyle: TextDecorationStyle.solid,
                                                                      
                                                                      ),
                                                                      
                                                                      ),
                                                                           

                                                                      SizedBox(
                                                                        width: 200,
                                                                        height: 200,
                                                                        child: Image.asset("assets/come_soon.png"),
                                                                      ),
              ],),
            );
  }