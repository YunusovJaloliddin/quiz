import 'package:flutter/material.dart';
import 'package:quizly/common/constants/colors.dart';
import 'package:quizly/common/constants/images.dart';

import '../depends/livelButton.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final sizeText=Size(size.width/411, size.height/731);
    return Scaffold(
      backgroundColor: ColorApp.backgroundColor,
      body: SafeArea(
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.backgroundImage),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.044),
                  child: Text(
                    "QUIZZLY",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 50*size.height/731,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.040),
                  child: SizedBox(
                    height: size.height * 0.25,
                    width: size.width * 0.80,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: ColorApp.sizedBoxColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Welcome to Quizzly!",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20*size.height/731,
                              color: ColorApp.SizedText1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8*size.height/731),
                            child: Text(
                              "With Quizzly, you can improve \nyour thinking, intelligence and \nlogical skills.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15*size.height/731,
                                color: ColorApp.SizedText1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.065),
                  child: Text(
                    "Choose the appropriate level...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20*size.height/731,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height*0.018),
                  child: const LevelButton(text: "Level 1",time: 0,),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: size.height*0.018),
                  child: const LevelButton(text: "Level 2",time: 20,),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: LevelButton(text: "Level 3",time: 10,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
