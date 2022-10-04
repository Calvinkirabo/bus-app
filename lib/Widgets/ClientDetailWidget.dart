import 'package:flutter/material.dart';
import 'package:bus_application/Constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../services.dart';
import '../main.dart';
import 'package:uuid/uuid.dart';



class ClientDetails extends StatefulWidget {
  @override
  _ClientDetailsState createState() => _ClientDetailsState();
}

class _ClientDetailsState extends State<ClientDetails> {
  double _rating = 3;
  String _ratingMeaning = "NEUTRAL";
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "NAME OF CLIENT",
                    style: kHomePage,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "[OPTIONAL]",
                    style: kOptionalText,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ENTER CLIENT NAME",
                  hintStyle: kOptionalText,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "TRAVEL ID OF CLIENT",
                    style: kHomePage,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "[OPTIONAL]",
                    style: kOptionalText,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              height: 35.0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "ENTER ID OF CLIENT",
                  hintStyle: kOptionalText,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "DATE OF TRAVEL",
                    style: kHomePage,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "[COMPULSORY]",
                    style: kOptionalText,
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15.0,
                ),
                height: 35.0,
                child: Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        void _selectDate() async {
    final DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(2021, 1),
      lastDate: DateTime(2050, 7)
      
    );
    if (newDate != null) {
      setState(() {
        date = newDate;
      });
    }
  }
    },
                      
                      child: Text(
                        "PICK DATE",
                        style: kOptionalText.copyWith(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                   
                  ],
                )),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "EXPERIENCE RATING",
                          style: kHomePage,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "[COMPULSORY]",
                          style: kOptionalText,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        RatingBar.builder(
                          initialRating: _rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, a) => Icon(
                            Icons.star,
                            color: Colors.blue,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                            setState(
                              () {
                                _rating = rating;
                                switch (_rating.round()) {
                                  case 1:
                                    {
                                      _ratingMeaning = "POOR";
                                    }
                                    break;

                                  case 2:
                                    {
                                      _ratingMeaning = "OKAY";
                                    }
                                    break;

                                  case 3:
                                    {
                                      _ratingMeaning = "NEUTRAL";
                                    }
                                    break;
                                  case 4:
                                    {
                                      _ratingMeaning = "GOOD";
                                    }
                                    break;
                                  case 5:
                                    {
                                      _ratingMeaning = "EXCELLENT";
                                    }
                                    break;

                                  default:
                                    {
                                      _ratingMeaning = "NEUTRAL";
                                    }
                                }
                              },
                            );
                          },
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Text(
                                "RATING: ",
                                style: kHomePage,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                "${_rating.toString()}",
                                style: kHomePage,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "[$_ratingMeaning]",
                                style: kHomePage,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
