import 'package:eyesofcosmos/presentation/utils/image_assets.dart';
import 'package:eyesofcosmos/data/model/scope_it_out_model.dart';

import 'package:eyesofcosmos/presentation/widgets/gaming_feature_card.dart';
import 'package:eyesofcosmos/presentation/widgets/level_card.dart';
import 'package:flutter/material.dart';

class ScopeItOutLanding extends StatelessWidget {
  const ScopeItOutLanding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.black12,
        elevation: 0,
        iconTheme: const IconThemeData(
            color: Colors.white), // Set AppBar icons to white
      ),
      
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.onBoardingBackground3Jpg),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(
              //   height: MediaQuery.of(context).size.height * 0.09,
              // ),
              const Padding(
                padding: EdgeInsets.only(left: 20,bottom:20),
                child: Text(
                  'Learn About Telescope',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'PoetsenOne',
                  ),
                ),
              ),

              

              // const Spacer(),
              GamingFeatureCard(text: 'This game teaches the player the basic concepts behind telescope design. The Webb Telescope may be unusual in appearance - but it has a lot in common with simple tube-shaped telescopes. The game includes an introduction to different types of telescopes and two telescope matching interactions',),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.46,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        // Enable horizontal scrolling
                        itemCount: scopeItOurGameLevels.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: scopeItOurGameLevels[index].onTap,
                            child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: LevelCard(text: scopeItOurGameLevels[index].title ,),
                          ));
                        },
                      ))),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}