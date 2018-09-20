import 'package:flutter/material.dart';

import 'package:flutter_currency_conversion/select_currency.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:intl/intl.dart';
import 'package:after_layout/after_layout.dart';
import 'dart:collection';

import 'package:flutter_currency_conversion/data/service.dart';

import 'package:flutter_currency_conversion/model/convertion.dart';
import 'package:flutter_currency_conversion/error/api_error.dart';

final RouteObserver<PageRoute> routeObserver = new RouteObserver<PageRoute>();

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
      navigatorObservers: [routeObserver],
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> with AfterLayoutMixin<MainPage>, RouteAware {

  dynamic preferences = SharedPreferences;

  var _isRatesLoading = true;
  var _isSearchOpened = false;

  var service = new Service();

  var keyIndices = new List();
  var searchIndices = new List();

  var rates = new LinkedHashMap();

  void _initPreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (!(preferences.getKeys().contains("currencyParam"))) {
      await preferences.setString("currencyParam", "USD");
      print("Successfully Initialized User Defaults");
    }
    else {
      print("User Defaults Already Instanciated");
    }
    setState(() {    
      this.preferences = preferences;
    });
  }

  String _getCurrency() {
    final currencyParam = preferences.getString("currencyParam") ?? '';
    return this.rates[currencyParam]["flag"] + " " + currencyParam;
  }

  String _getDate() {
    DateTime now = new DateTime.now();
    var dateFormatter = new DateFormat('MMMM dd');

    return dateFormatter.format(now);
  }

  void _getRates() async {
    final response = await service.getRates();
    if (response is Map) {

      this.keyIndices.clear();
      for (var key in response.keys) {
        print(response[key]["flag"] + " " + response[key]["definition"] + ": " + response[key]["symbol"].toString() + response[key]["value"].toString());
        keyIndices.add(key);
      }

      setState(() {
        this.searchIndices = this.keyIndices;
        this.rates = response;
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

  @override
  void initState() {
    super.initState();
    _initPreferences();
  }

  @override
  void afterFirstLayout(BuildContext context) {
    setState(() {
      _isRatesLoading = true;
    });
    _getRates();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
  }

  @override
  void didPopNext() {
    setState(() {
      _isRatesLoading = true;
    });
    _getRates();
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
                    fontSize: 13.0,
                  ),
                ),
              ),
              Tab(child: Text("Rates", style: new TextStyle(
                    fontSize: 13.0,
                  ),
                ),
              ),
            ]
          ),
          title: Text(_getDate(), style: new TextStyle(
              fontSize: 15.0,
            ),
          ),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _isRatesLoading = true;
              });
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
                              decoration: new InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Search (ex. USD, EUR, GBP)",
                                border: InputBorder.none,
                              ),
                              style: new TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontFamily: "Futura",
                              ),
                              onChanged: (text) {
                                setState(() {
                                  _isSearchOpened = true;
                                });
                              },
                              onSubmitted: (text) {
                                var searchIndices = List();
                                if (text.isEmpty) {
                                  searchIndices = this.keyIndices;
                                }
                                else {
                                  searchIndices = keyIndices.where((item) => item.toString().contains(text.toUpperCase())).toList();
                                }
                                setState(() {
                                  this.searchIndices = searchIndices;
                                  this.rates = this.rates;
                                  _isSearchOpened = false;
                                });
                              },
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
                      child: new GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SelectCurrencyPage(this.keyIndices, this.rates, 0)),
                          );
                        },
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
                                new Text(_getCurrency()),
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
                            child: _isSearchOpened ? new Center(
                              child: new CircularProgressIndicator(),
                              ) : new ListView.builder(
                              itemCount: this.rates != null ? this.searchIndices.length : 0,
                              itemBuilder: (context, index) {
                                final rate = rates[this.searchIndices[index]];
                                return new Container(
                                  height: 42.0,
                                  child: new Column(
                                    children: <Widget>[
                                      new Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          new Text(rate["flag"] + " " + searchIndices[index]),
                                          new Text(rate["symbol"] + rate["value"].toStringAsFixed(2)),
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