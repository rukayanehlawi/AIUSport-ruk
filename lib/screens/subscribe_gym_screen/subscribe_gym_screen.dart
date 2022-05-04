import 'package:aiusport/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscribeGymScreen extends StatefulWidget {
  const SubscribeGymScreen({Key? key}) : super(key: key);

  @override
  State<SubscribeGymScreen> createState() => _SubscribeGymScreenState();
}

class _SubscribeGymScreenState extends State<SubscribeGymScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Ink.image(
              fit: BoxFit.cover,
              image: AssetImage("assets/gym.jpg")
          ),
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              color: Darkblue.withOpacity(0.7),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200,left: 50),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
