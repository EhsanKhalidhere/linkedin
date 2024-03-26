import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/Data/network_entity.dart';
import 'package:linkedin/Pages/main/main_page/Network/widget/single_network_user_widget.dart';
import 'package:linkedin/Widgets/app_ba_widget.dart';
import 'package:linkedin/theme/styles.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});

  @override
  State<NetworkPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NetworkPage> {

  List<NetworkEntity> networkData = NetworkEntity.networkData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const   SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Manage My Network",style: TextStyle(fontWeight: FontWeight.bold,color: linkedInBlue0077B5),),
              Icon(Icons.arrow_forward_ios,color: linkedInMediumGrey86888A)
            ],),),
            const   SizedBox(height: 10,),
            Container(
              height: 8,
              color: linkedInLightGreyCACCCE,
            ),
            const   SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(6),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Invitations",style: TextStyle(fontWeight: FontWeight.bold,color: linkedInBlue0077B5),),
                  Icon(Icons.arrow_forward_ios,color: linkedInMediumGrey86888A)
                ],),),
         const   SizedBox(height: 10,),
           Container(
              height: 8,
              color: linkedInLightGreyCACCCE,
            ),
            const   SizedBox(height: 10,),
            GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10),
                shrinkWrap:true,
                physics: ScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,

              childAspectRatio: 0.6,),
                itemCount: networkData.length,
                itemBuilder: (context,index){
              return SingleNetworkUserWidget( network: networkData[index],);

                })
          
            
          ],
        ),
      ),

    );
  }
}
