import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/theme/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _NotificationsPageState();

}

class _NotificationsPageState extends State<CreatePage> {
 bool _isShowBottomModalSheet=false;
  @override
  Widget build(BuildContext context) {
    if(_isShowBottomModalSheet==false){
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        _openFirstBottomModalSheet();
        _createSubPosBottomModalSheet();


      });

    }
    setState(() {
      _isShowBottomModalSheet=true;
      print(_isShowBottomModalSheet);
    });

    return Scaffold(


    );
  }
 _openFirstBottomModalSheet(){
  return showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context){
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [

              //appbar
              Container(

                padding:EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                height: 110,
                decoration: const BoxDecoration(
                  color: linkedInWhiteFFFFFF,
                  boxShadow:  [
                  BoxShadow(
                      offset: Offset(0, 1),
                      spreadRadius: 0.1,
                      blurRadius: 5,
                      color: linkedInLightGreyCACCCE
                    )
                  ]

                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [

                      Row(

                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child:
                            Icon(
                              Icons.close_outlined,size: 30,
                            ),
                          ),
                          const SizedBox(width: 15,),
                          const Text("SharePost",style: TextStyle(
                            color:linkedInMediumGrey86888A,fontSize: 25,fontWeight: FontWeight.bold
                          ),),



                        ],
                      ),
                      const Text("Post",style: TextStyle(color: linkedInBlue0077B5,fontWeight: FontWeight.bold,fontSize: 22),)
                    ],
                  ),
                ),






              ),
             const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    //profile image
                    SizedBox(
                      height: 60,width: 60,
                    child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                      child: Image.asset("assets/profile_1.jpeg") ,

                    ),
                    ),
                    const  SizedBox(width:10 ,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       _switchWidget(title: "Doug Stevenson",prefixIcon: Icons.account_circle_rounded,suffixIcon:Icons.arrow_drop_down),
                       SizedBox(height: 5,),
                        _switchWidget(title: "Anyone",prefixIcon: FontAwesomeIcons.earth,suffixIcon:Icons.arrow_drop_down)
                      ],
                    ),


                  ],
                ),
              ),
              const  SizedBox(width:20 ,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "What Do You Want To Talk About?"
                  ),
                  maxLines: 15,
                  style:const TextStyle(
                    fontSize: 20,

                  ),
                ),
              )

            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
       Row(
         children: [
           const Icon(Icons.camera_alt,color: linkedInMediumGrey86888A,),
           const   SizedBox(width: 15,),
           const Icon(Icons.video_call,color: linkedInMediumGrey86888A,),
           const SizedBox(width: 15,),
           const   Icon(Icons.image,color: linkedInMediumGrey86888A,),
           const   SizedBox(width: 15,),
             GestureDetector(
                 onTap: (){
                   _createSubPosBottomModalSheet();



                 },
                 child: const Icon(Icons.more_horiz,color: linkedInMediumGrey86888A,)),
         ],
       ),
              Row(
                children:const [
                  Icon(Icons.message_outlined),
                  SizedBox(width: 10,),
                  Text("Anyone",style: TextStyle(fontWeight: FontWeight.bold,color: linkedInMediumGrey86888A),),
                  SizedBox(width: 10,)
                ],
              )


            ],
          ),
        )

      ],
    );
      })  ;

 }
 _createSubPosBottomModalSheet(){
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
        barrierColor: Colors.transparent,
        context: context, builder: (context){
      return Container(

        decoration: const BoxDecoration(
          color: linkedInWhiteFFFFFF,
          boxShadow:  [
            BoxShadow(
              spreadRadius: 0.5,
              blurRadius: 1,
              offset: Offset(5,0),
              color: linkedInLightGreyCACCCE
            )
          ]
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 6,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: linkedInMediumGrey86888A,


                ),
              ),
              const SizedBox(height: 40,
              ),
              _createSubPostNavigationItem(
                title: "Add Photo",
                iconData: Icons.image
              ),
             const SizedBox(height: 10,),
              _createSubPostNavigationItem(
                  title: "Take a video",
                  iconData: Icons.video_call
              ),
              const SizedBox(height: 10,),

              _createSubPostNavigationItem(
                  title: "Use a Template",
                  iconData: Icons.temple_buddhist
              ),
              const SizedBox(height: 10,),
              _createSubPostNavigationItem(
                  title: "Celebrate an occasion",
                  iconData: Icons.celebration
              ),
              const SizedBox(height: 10,),
              _createSubPostNavigationItem(
                  title: "Share that you are hiring",
                  iconData: Icons.work
              ),
              const SizedBox(height: 10,),
              _createSubPostNavigationItem(
                  title: "Add Photo",
                  iconData: Icons.image
              ),
              const SizedBox(height: 10,),
              _createSubPostNavigationItem(
                  title: "Find an expert",
                  iconData: Icons.account_circle_rounded
              ),
              const SizedBox(height: 10,),
              _createSubPostNavigationItem(
                  title: "Create a poll",
                  iconData: Icons.bar_chart
              ),
              const SizedBox(height: 10,),
              _createSubPostNavigationItem(
                  title: "Create an event",
                  iconData: Icons.event
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),


      ),);

    });
 }
 _createSubPostNavigationItem({String? title, IconData? iconData }){
    return Row(
      children: [
      Icon(iconData,size: 25,color: linkedInMediumGrey86888A,)  ,
        const SizedBox(width: 10,),
        Text("$title",style:const TextStyle(
          fontSize: 15
        ),)
      ],
    );

 }
 _switchWidget( {String? title,IconData? prefixIcon,IconData? suffixIcon}){
    return  Container(
      height:30 ,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          border: Border.all(color: linkedInMediumGrey86888A,width: 1),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Icon(prefixIcon,color: linkedInMediumGrey86888A,size: 18,),
          SizedBox(width: 5,),
          Text("$title",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
          SizedBox(width: 5,),
          Icon(suffixIcon,color: linkedInMediumGrey86888A,size: 30,)

        ],
      ),
    );
 }
}

