import 'package:flutter/material.dart';

class DetayClass extends StatefulWidget {
  String assetName;

  DetayClass({required this.assetName, Key? key}) : super(key: key);

  @override
  State<DetayClass> createState() => _DetayClassState();
}

class _DetayClassState extends State<DetayClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        InkWell(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: Hero(
            tag: widget.assetName,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.assetName), fit: BoxFit.cover)),
            ),
          ),
        ),
        Positioned(
          left: 15,
          right: 15,
          bottom: 15,
          child: Container(
            // height: 160,
            width: MediaQuery.of(context).size.width - 30,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        image: DecorationImage(
                          image: AssetImage("assets/dress.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "LAMINATED",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Louis vuitton",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 17),
                        Container(
                          height: 30,
                          child: Text(
                            "One button V-neck sling long-sleeved waist\n female stitching dress",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Divider(thickness: 1),
                SizedBox(
                  height: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " \$6500",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.brown,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 30,
            child: InkWell(
              onTap: (() {}),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.black.withOpacity(0.5)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "LAMINATED",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}
