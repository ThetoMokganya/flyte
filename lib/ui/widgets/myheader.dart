import 'package:flutter/material.dart';

class MyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 25,
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(.3), BlendMode.srcOver),
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1555506821-57c39f1d9ed8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1189&q=80",
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.flight_takeoff,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 9.0,
                      ),
                      Text(
                        "FLYTE",
                        style: Theme.of(context)
                            .textTheme
                            .subhead
                            .apply(color: Colors.white, fontWeightDelta: 2),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
