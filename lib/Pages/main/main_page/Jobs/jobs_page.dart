import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedin/theme/styles.dart';

class JobsPage extends StatefulWidget {
  const JobsPage({super.key});

  @override
  State<JobsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<JobsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
       const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(children:const [
              Icon(Icons.save,color: linkedInMediumGrey86888A,),
              SizedBox(width: 5,),
              Text("My Jobs",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
            ],),
            Row(children: const[
              Icon(Icons.edit_calendar,color:linkedInMediumGrey86888A),
              SizedBox(width: 5,),
              Text("Post a job",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
            ],)
          ],

        ),
        const SizedBox(height: 15,),
       Container(
          height: 8,
          width: double.infinity,
          color: linkedInLightGreyCACCCE,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
         const   Align(
              alignment: Alignment.topLeft,
                child: const   Text("Recommended for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),
          const SizedBox(height: 15,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context,index){
                  return Container(

                    child:Column(


                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                                width: 70,
                                color: linkedInLightGreyCACCCE,
                                child: const Icon(Icons.warehouse_outlined,size: 60,color: linkedInMediumGrey86888A,)),
                           const SizedBox(width: 10,),
                            Column(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Job Title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                                    Padding(

                                      padding: const EdgeInsets.only(left: 165),
                                      child: Icon(Icons.save),
                                    )
                                  ],
                                ),
                               const Text("Company Name",style: TextStyle(fontSize: 14),),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:const [
                                    Icon(FontAwesomeIcons.a,color: Colors.green,size: 35,),
                                    Text("Actively recruiting",style: TextStyle(color: linkedInMediumGrey86888A),)

                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const[
                                    Text("Promoted - ",style: TextStyle(color: linkedInMediumGrey86888A),),
                                    Text("2 applications",style: TextStyle(color: linkedInBlue0077B5  ),)

                                  ],
                                )
                              ],
                            ),],
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 80,right: 10),
                          child: Container(
                            height: 4,
                            width: double.infinity,
                            color: linkedInLightGreyCACCCE,
                          ),
                        ),
                        const SizedBox(height: 10,),



                      


                      ],
                    )
                  );

              }

            )
  ]),
        ),
        Container(
          height: 8,
          width: double.infinity,
          color: linkedInLightGreyCACCCE,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Show all",style: TextStyle(fontSize: 16,color: linkedInBlue0077B5),),
            Icon(Icons.arrow_forward,color: linkedInBlue0077B5)
          ],),
        const SizedBox(height: 10,),
        ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context,index){
              return Container(

                  child:Column(


                    children: [
                      Row(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              color: linkedInLightGreyCACCCE,
                              child: const Icon(Icons.warehouse_outlined,size: 60,color: linkedInMediumGrey86888A,)),
                          const SizedBox(width: 10,),
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Job Title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

                                  Padding(

                                    padding: const EdgeInsets.only(left: 165),
                                    child: Icon(Icons.save),
                                  )
                                ],
                              ),
                              const Text("Company Name",style: TextStyle(fontSize: 14),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:const [
                                  Icon(FontAwesomeIcons.a,color: Colors.green,size: 35,),
                                  Text("Actively recruiting",style: TextStyle(color: linkedInMediumGrey86888A),)

                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const[
                                  Text("Promoted - ",style: TextStyle(color: linkedInMediumGrey86888A),),
                                  Text("2 applications",style: TextStyle(color: linkedInBlue0077B5  ),)

                                ],
                              )
                            ],
                          ),],
                      ),
                      const SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 80,right: 10),
                        child: Container(
                          height: 4,
                          width: double.infinity,
                          color: linkedInLightGreyCACCCE,
                        ),
                      ),
                      const SizedBox(height: 10,),






                    ],
                  )
              );

            }

        )


      ],
    ),

    );
  }
}
