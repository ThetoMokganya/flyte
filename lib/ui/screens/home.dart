import 'package:flyte/ui/widgets/departuredetailscolumn.dart';
import 'package:flyte/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6ff),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            MyHeader(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Upcoming Flights",
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .apply(fontWeightDelta: 2),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.0),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'details'),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 21.0, vertical: 31.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey[300],
                            blurRadius: 11,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          //Shows the flights around your location
                          DepartureDetailColumn(
                              textColor: Theme.of(context).accentColor),
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Icon(Icons.airplanemode_active,
                                    color: Theme.of(context).accentColor),
                                Text(
                                  "1h31min",
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle
                                      .apply(
                                          color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                          ArrivalDetailColumn(
                              textColor: Theme.of(context).accentColor),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
