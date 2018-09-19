import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:after_layout/after_layout.dart';
import 'dart:collection';

import 'package:flutter_currency_conversion/data/service.dart';

import 'package:flutter_currency_conversion/model/convertion.dart';
import 'package:flutter_currency_conversion/error/api_error.dart';

void main() => runApp(new FlutterCurrencyConverter());

class FlutterCurrencyConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color.fromRGBO(75, 214, 145, 1.0),
        fontFamily: 'Rockwell'),
      home: new MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage>  with AfterLayoutMixin<MainPage> {

  var _isRatesLoading = true;

  var service = new Service();

  var keyIndices = new List();
  var rates = new LinkedHashMap();

  final searchController = TextEditingController();

  String _getDate() {
    DateTime now = new DateTime.now();
    var dateFormatter = new DateFormat('MMMM dd');

    return dateFormatter.format(now);
  }

  void _getRates() async {
    final response = await service.getRates();
    if (response is Map) {
      this.rates = response;

      for (var key in response.keys) {
        print(response[key]["flag"] + " " + response[key]["definition"] + ": " + response[key]["symbol"].toString() + response[key]["value"].toString());
        keyIndices.add(key);
      }

      setState(() {
        _isRatesLoading = false;
      });
    }
    else if (response is ApiError) {
      print(response.error);
      setState(() {
        _isRatesLoading = false;
      });
    }
  }

  void _getConvertion() async {
    final response = await service.getConvertion();
    if (response is Convertion) {
      print(response.convertionRates[0]["flag"] + " " + response.convertionRates[0]["definition"]);
      print(response.convertionRates[1]["flag"] + " " + response.convertionRates[1]["definition"]);
      print(response.convertionRates[1]["symbol"].toString() + response.rate.toString());
    }
    else if (response is ApiError) {
      print(response.error);
    }
  }

  void _searchValue() {
    print("SEARCH: ${searchController.text}");
  }

  @override
  void initState() {
    super.initState();

    searchController.addListener(_searchValue);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      _isRatesLoading = true;
    });

    //Testing Purposes
    service.currencyParam = "USD";
    _getRates();
  }

  @override
  void dispose() {
    searchController.removeListener(_searchValue);
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(child: Text("Convert", style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
              Tab(child: Text("Rates", style: new TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ]
          ),
          title: Text(_getDate(), style: new TextStyle(
              fontSize: 13.0,
            ),
          ),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _isRatesLoading = true;
              });

              //Testing Purposes
              service.currencyParam = "USD";
              _getRates();
            },)
          ],
        ),
        body: TabBarView(
          children: [
            new Column(
              children: <Widget>[
              ],
            ),
            _isRatesLoading ?  new Center(
                child: new CircularProgressIndicator(),
            ) : new NestedScrollView(
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                ];
              },
              body: new Column(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                    child: new Container(
                      color: Colors.transparent,
                      child: new Container(
                        padding: new EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: new Center(
                          child: new Container(
                            child: new TextField(
                              controller: searchController,
                              decoration: new InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Search",
                                border: InputBorder.none,
                              ),
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontFamily: "Futura",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                    child: new Container(
                      color: Colors.transparent,
                      child: new Container(
                        padding: new EdgeInsets.all(12.0),
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: new Center(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text("🇺🇸 USD"),
                              new Icon(Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 14.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    flex: 1,
                    child: new Padding(
                      padding: new EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
                      child: new Container(
                        color: Colors.transparent,
                        child: new Container(
                          padding: new EdgeInsets.all(12.0),
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0),
                                blurRadius: 3.0,
                              ),
                            ],
                          ),
                          child: new Center(
                            child: new ListView.builder(
                              itemCount: this.rates != null ? this.rates.length : 0,
                              itemBuilder: (context, index) {
                                return new Container(
                                  height: 42.0,
                                  child: new Column(
                                    children: <Widget>[
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          new Text(rates[this.keyIndices[index]]["flag"] + " " + keyIndices[index]),
                                          new Text(rates[this.keyIndices[index]]["symbol"] + rates[this.keyIndices[index]]["value"].toStringAsFixed(2)),
                                        ],
                                      ),
                                      new Divider(),
                                    ],
                                  ),
                                );
                              }
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}