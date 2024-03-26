import 'package:flutter/material.dart';
import 'package:linkedin/theme/styles.dart';
import '';


PreferredSizeWidget appBarWidget(BuildContext context, { String? title, bool? isJobTap,VoidCallback? onLeadingTap}){
  return AppBar(

    backgroundColor:linkedInWhiteFFFFFF,
    elevation: 0,
    leading: GestureDetector(
      onTap: onLeadingTap,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset("assets/profile_1.jpeg"),
        ),
      ),
    ),
    title: Container(
      decoration: BoxDecoration(
          color: linkedInLightGreyCACCCE.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)
      ),
      child: TextFormField(

        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "$title",
            border: InputBorder.none
        ),

      ),
    ),
    actions: [
     isJobTap==false?
         Row(
           children: [
             GestureDetector(
               onTap: (){},
               child: Icon(Icons.message_outlined,color: linkedInDarkGrey313335,size: 35,),

             ),
             SizedBox(width: 10,)
           ],
         )
         : Row(
       children: [
         Icon(Icons.more_vert,color: linkedInDarkGrey313335,size: 35,),
         SizedBox(width: 10,),
         Icon(Icons.message_outlined,color: linkedInDarkGrey313335,size: 35,),
         SizedBox(width: 10,),

       ],

     )
    ],

    
    );

}