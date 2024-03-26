import 'package:flutter/material.dart';
import 'package:linkedin/Data/network_entity.dart';
import 'package:linkedin/theme/styles.dart';

class SingleNetworkUserWidget extends StatefulWidget {
  final NetworkEntity network;
  const SingleNetworkUserWidget({super.key, required this.network});

  @override
  State<SingleNetworkUserWidget> createState() => _SingleNetworkUserWidgetState();
}

class _SingleNetworkUserWidgetState extends State<SingleNetworkUserWidget> {
  @override
  Widget build(BuildContext context) {
    return   Card(
      elevation: 3,
      child: Stack(
        children: [
          Column(

            children: [
              Container(
                width: double.infinity,
                height: 80,
                color: linkedInLightGreyCACCCE,
                child: Image.asset("assets/${widget.network.userBgImage}",fit: BoxFit.cover,),
              ),
              const SizedBox(height: 60,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text("${widget.network.username}",style: TextStyle(fontWeight: FontWeight.bold),maxLines: 1,overflow: TextOverflow.ellipsis,),),
              const SizedBox(height: 8,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text("${widget.network.userBio}",maxLines: 1,overflow: TextOverflow.ellipsis,),),
              const SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.group),
                    SizedBox(width: 10,),
                    Expanded(
                      child: Text("${widget.network.mutualConnections} matual connections",maxLines: 2,overflow: TextOverflow.ellipsis,selectionColor: linkedInMediumGrey86888A,),
                    )
                  ],
                ),

              ),
              const SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,height: 35,
                decoration: BoxDecoration(
                    border: Border.all(color: linkedInBlue0077B5,width: 1),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: const Center(
                  child: Text("Connect",style: TextStyle(color: linkedInBlue0077B5,fontWeight: FontWeight.bold),),
                ),
              ),

            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                  color: linkedInMediumGrey86888A,
                  borderRadius: BorderRadius.circular(80)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset('assets/${widget.network.userProfileImage}',fit: BoxFit.cover,),

              ),
            ),
          )
        ],
      ),
    );
  }
}
