import 'package:aiusport/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDialog extends StatelessWidget {
  final String newstitle;
  final String newsinformation;
  final String newsurl;

  const CustomDialog(
      {Key? key,
      required this.newstitle,
      required this.newsinformation,
      required this.newsurl})
      : super(key: key);

  String error(String error) {
    String x;
    x = error;
    return x;
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 100,
            bottom: 16,
            left: 16,
            right: 16,
          ),
          margin: EdgeInsets.only(top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(17),
              boxShadow: [
                BoxShadow(
                  color: Darkblue,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                newstitle,
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                newsinformation,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () async {
                      await launch(
                        newsurl,
                        forceSafariVC: true,
                        enableJavaScript: true,
                        enableDomStorage: true,
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        color: Colorblue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.link,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 16,
          right: 16,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 70),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
            child: Image(
              image: AssetImage("assets/newsicon.gif"),
            ),
          ),
        ),
      ],
    );
  }
}
