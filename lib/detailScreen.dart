



import 'package:flutter/material.dart';
import 'package:uiblog/constant.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final description = "A yacht /jɒt/ is a sailing or power vessel used for pleasure, cruising, or racing.[2][3][4] There is no standard definition, though the term generally applies to vessels with a cabin intended for overnight use. To be termed a yacht, as opposed to a boat, such a pleasure vessel is likely to be at least 33 feet (10 m) in length and may have been judged to have good aesthetic qualities.[1] The Commercial Yacht Code classifies yachts 79 ft (24 m) and over as large.[5] Such yachts typically require a hired crew[1] and have higher construction standards.[5] Further classifications for large yachts are: commercial—carrying no more than 12 passengers, private—solely for the pleasure of the owner and guests, or by flag, the country under which it is registered.[6] A superyacht (sometimes megayacht) generally refers to any yacht (sail or power) longer than 131 ft (40 m).[7] Racing yachts are designed to emphasize performance over comfort.[8] Charter yachts are run as a business for profit.[7] As of 2020 there were more than 15,000 yachts of sufficient size to require a professional crew.[9]";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      backgroundColor: KdesColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
              Image.asset(
                "assets/images/ship.jpg",
                height: 400,
      
                width: size.width,
                fit: BoxFit.cover,
                ),
      
                Padding(
                  padding: EdgeInsets.only(
                  top: 45,
                  bottom: 0,
                  left: 24,
                  right: 24,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    InkWell(
                      onTap: ()=> Navigator.of(context).pop(),
                      splashColor: KButtonBgColor,
                      child: Container(
                        height: 45,
                        width: 45,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: KButtonBgColor.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(48)
                          ),
                          child: Center(child: Icon(Icons.arrow_back_ios_new_outlined, color: KLightColor,size: 20,))
                          // Image.asset("assets/icons/"),
                      ),
                    ),
      
                  Container(
                      height: 45,
                      width: 45,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: KButtonBgColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(48)
                        ),
                        child: Center(child: 
                        
                        Image.asset("assets/icons/save.png",
                        color:
                         KLightColor,
                        height: 18,)
                        // Icon(Icons.arrow_back_ios_new_outlined, color: KLightColor,size: 24,)
                        )
                        // Image.asset("assets/icons/"),
                    ),
      
                  ],),
                )
            ]),
      
      
      
            Padding(
              
                    padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 24),
              child: Column(
                children: [
      
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Container(
                          width: size.width/1.5,
                          
                          child: Text("What it feels like living in Yatch ?", style: TextStyle(color: KLightColor, fontSize: 20,fontWeight: FontWeight.w500),)),
                        Hero(
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
                        ),
                    ],
                  ),
      
                  Divider(
                    thickness: 1,
                    color: KLightColor.withOpacity(0.08),
                    height: 32,
                  ),
                  Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                  Container(
                        height: 48,
                        width: 48,
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
                          fontSize: 13,
                          // fontStyle: FontStyle.italic,
                          color: KLightColor
                          ),
                        ),
                    ),
      
                    Text.rich(TextSpan(children: [
                      WidgetSpan(child: Image.asset("assets/icons/add.png", height: 15,width: 15,color: KLightColor)),
                      TextSpan(text: " Follow", style: TextStyle(
                          fontSize: 13,
                          // fontStyle: FontStyle.italic,
                          color: KLightColor
                          ),)
                    ]))
                    
                    // TextButton.icon(
                    //   icon: Icon(Icons.add)
                    //   "26 Mar, 2005", 
                    //   style: TextStyle(
                    //     fontSize: 11,
                    //     color: KLightColor.withOpacity(0.8)
                    //     ),
                    //   ),
                    
                                  
                                ],),
      
      
                  Divider(
                    thickness: 1,
                    color: KLightColor.withOpacity(0.08),
                    height: 32,
                  ),
      
                  Text(description, style: TextStyle(color: KLightColor, fontSize: 15),),

                  Container(
                    height: 64,
                    width: size.width,
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(color: KCommentColor,borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        
                      Container(
                        margin: EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(color: KLightColor, borderRadius: BorderRadius.circular(20)),
                        height: 34,width: 34,child: Icon(Icons.edit,color: Colors.black,),),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Write a comment ...",
                            hintStyle: TextStyle(color: KLightColor)
                            )
                            )
                            ),
                      Container(
                        margin: EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(color: KLightColor, borderRadius: BorderRadius.circular(20)),
                        height: 35,width: 35,child: Center(child: Icon(Icons.send,color: Colors.black,size: 20)),),
                      ],
                    ),
                  )
                ],
              ),
            )
      
      
          ],
        ),
      ),
    );
  }
}