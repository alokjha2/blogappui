



import 'package:flutter/material.dart';
import 'package:uiblog/constant.dart';
import 'package:uiblog/detailScreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int selectedItem = 0;


  List<String> blogTypes = [
    "All",
    "Fashion",
    "UI",
    "Design",
    "Money",
    "Technology",
    "Investment",
    "Elon Musk",
  ];

  List category = [
    {
      "image": "assets/images/tech.png",
      "title": "I Phone",
      "articles" : "149"
    },

    {
      "image": "assets/images/art.png",
      "title": "Design",
      "articles" : "234"
    },

    {
      "image": "assets/images/social.png",
      "title": "Social",
      "articles" : "109"
    },

    {
      "image": "assets/images/herb.png",
      "title": "Health",
      "articles" : "134"
    },

  ];



  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KButtonBgColor,

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(
            top: 50,
            bottom: 0,
            left: 24,
            right: 24
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Container(
                      height: 44,
                      width: 44,
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/images/myimage.jpg",),fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 14,),
      
               
                  const Expanded(
                    child: Text("Hello Peckish Human!", style: TextStyle(color: KLightColor, fontWeight: FontWeight.w500),)),
      
                  Image.asset(
                    "assets/icons/bell.png",
                    height: 24,
                    width: 24,
                    color: Colors.white,
                    )
                // Image.asset(name)
              ]),
              SizedBox(height: 22,),
      
              const Text.rich(TextSpan(children: [
                TextSpan(text: "Trending", style: TextStyle(fontSize: 26, color: KLightColor)),
                TextSpan(text: " Blog", style: TextStyle(fontSize: 26, color: KLightColor, fontWeight: FontWeight.bold)),
                  ]
                )
              ),
      
              SizedBox(height: 20,),
      
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children:List.generate(
                  blogTypes.length, 
                  (index) => GestureDetector(
                    onTap: ()=> setState(() {
                     selectedItem =index;
                    }),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Column(
                        children: [
                          Text(
                            blogTypes[index],
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: 
                              
                              
                              selectedItem == index? 
                              FontWeight.w600 : FontWeight.w500,
                              color: 
                              selectedItem == index
                              ? KLightColor : KLightColor.withOpacity(0.4)
                              ),
                              ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              color: selectedItem == index
                              ? KLightColor : 
                              Colors.transparent
                              // KLightColor.withOpacity(0.4)
                              ,
                            ),
                           )
                        ],
                      ),
      
                    ),
                  )
                      )
                      ),
              ),
              SizedBox(height: 24,),
      
              Stack(
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailScreen())),
                    child: Container(
                      height: 252,
                      width: size.width,
                      decoration: BoxDecoration(
                        color: KLightColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(24),
                        image:
                        DecorationImage(image: 
                         AssetImage("assets/images/ship.jpg"),fit: BoxFit.cover
                         )
                        
                        ),
                    ),
                  ),
      
      
                  Positioned(
                    top: 24,
                    right: 24,
                    child: Hero(
                      tag: "Likes",
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 34,
                        width: 68,
                        decoration: BoxDecoration(
                          color: KBoxColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(children: [
                          Image.asset("assets/icons/heart.png", 
                          height: 16,
                          width: 16,
                          ),
                          SizedBox(width: 4,),
                          Text("580", style: TextStyle(fontSize: 13, color: KLightColor.withOpacity(0.75)),)
                          
                        ]),
                        ),
                    )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
      
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text(
                              "What it feels like living in Yatch ?",
                              style: TextStyle(
                                fontSize: 16,
                                color: KLightColor,
      
                                fontWeight: FontWeight.w500
                                ),
                              ),
                              SizedBox(height: 4,),
      
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                Container(
                      height: 37,
                      width: 37,
                    decoration: const BoxDecoration(
                      // color: Colors.white,
                      shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage("assets/images/myimage.jpg",),fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Text(
                      "Peter Parker", 
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: KLightColor.withOpacity(0.8)
                        ),
                      ),
                  ),
                  
                  Text(
                    "26 Mar, 2005", 
                    style: TextStyle(
                      fontSize: 11,
                      color: KLightColor.withOpacity(0.8)
                      ),
                    ),
                  
                                
                              ],)
                          ],),
                        ),
                      )
                ],
              ),
              SizedBox(height: 22,),
              const Text(
                "Categories", style: TextStyle(
                fontSize: 15,
                color: KLightColor, fontWeight: FontWeight.w500
                ),),
                SizedBox(height: 22,),
      
                Container(
                  height: 162,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: category.length,
                    itemBuilder: (context, index) => 
                     Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 162,
                      width: 120,
                      decoration: BoxDecoration(
                        color: KCatColor.withOpacity(
                          0.05),
                          borderRadius: BorderRadius.circular(18)
                      ), child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0, bottom: 8),
                          child: Image.asset(
                            category[index]["image"],
                            height: 48,
                            // width: 32,
                            fit: BoxFit.cover,
                            ),
                        ),
                  
                        Text(category[index]["title"], style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: KLightColor),),
                        SizedBox(height: 6,),
                        Text("${category[index]["articles"]} Articles", style: TextStyle(fontSize: 12, color: KLightColor.withOpacity(0.4)),),
                  
                      ]),
                    ),
                  ),
                )
      
      
            ],
          ),
        ),
      ),


    );
  }
}

