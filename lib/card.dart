import 'package:flutter/material.dart';

class PerfCard extends StatelessWidget {
  final int colorBool;
  final double progressvalue;
  final String maintext;
  final String secondarttext;
  final String progressText;
  const PerfCard(
      {super.key,
      required this.colorBool,
      required this.progressvalue,
      required this.progressText,
      required this.maintext,
      required this.secondarttext});

  @override
  Widget build(BuildContext context) {
    Color textColor = colorBool == 1 ? Colors.white : Color(0xFF6b4200);
    final size = MediaQuery.of(context).size;
    return AspectRatio(
      aspectRatio: 0.7,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 5.0, offset: Offset(5, 5), color: Colors.black38)
            ],
            color: colorBool == 1 ? Color(0xFFf56c61) : Color(0xFFffd264),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        padding: EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            width: size.width * 0.15,
            height: size.width * 0.15,
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    height: size.width * 0.15,
                    width: size.width * 0.15,
                    child: CircularProgressIndicator(
                      value: progressvalue,
                      color:
                          colorBool == 1 ? Colors.white60 : Color(0x7F6b4200),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    progressText,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.045),
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Container()),
          Text(
            maintext,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.045),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            secondarttext,
            style: TextStyle(color: textColor, fontSize: size.width * 0.032),
          )
        ]),
      ),
    );
  }
}
