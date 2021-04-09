import 'package:flyte/ui/widgets/departuredetailscolumn.dart';
import 'package:flutter/material.dart';
import 'package:flyte/global.dart';
import 'package:flyte/ui/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text("Flight Information"),
        elevation: 0.0,
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    color: blueColor,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(),
                )
              ],
            ),
          ),
          Positioned.fill(
            child: Container(
              height: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 15.0),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 7.0,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(0xfff7f9ff)),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 25.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [blueColor, Color(0xfff7f9ff)],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            DepartureDetailColumn(),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Icon(Icons.airplanemode_active,
                                      color: Colors.white),
                                  Text(
                                    "1h31min",
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle
                                        .apply(color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            ArrivalDetailColumn(),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.0),
                          height: 100,
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Image.network(cloudImg),
                              ),
                              Positioned.fill(
                                child: Image.network(airplaneImg),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlightInfoRow(
                          title: "Flight",
                          content: "LF713",
                        ),
                      ),
                      Expanded(
                        child: FlightInfoRow(
                          title: "Class",
                          content: "First",
                        ),
                      ),
                      Expanded(
                        child: FlightInfoRow(
                          title: "Boarding",
                          content: "09:11",
                        ),
                      ),
                      Expanded(
                        child: FlightInfoRow(
                          title: "Terminal",
                          content: "12A",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FlightInfoRow extends StatelessWidget {
  final String title, content;

  const FlightInfoRow({Key key, this.title, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "$title",
          style: Theme.of(context).textTheme.body1.apply(color: Colors.black45),
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(
          "$content",
          style: Theme.of(context).textTheme.title.apply(color: Colors.black87),
        )
      ],
    );
  }
}
