import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'dart:collection';

class SelectCurrencyPage extends StatefulWidget {

  var keyIndices = new List();
  var rates = new LinkedHashMap();

  SelectCurrencyPage(this.keyIndices, this.rates);

  @override
  _SelectCurrencyState createState() => new _SelectCurrencyState(keyIndices, rates);
}

class _SelectCurrencyState extends State<SelectCurrencyPage> {

  dynamic preferences = SharedPreferences;

  var _isSearchOpened = false;

  var keyIndices = new List();
  var searchIndices = new List();

  var rates = new LinkedHashMap();

  _SelectCurrencyState(this.keyIndices, this.rates) {
    this.searchIndices = keyIndices;
  }

  void _instantiatePreferences() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {    
      this.preferences = preferences;
    });
  }

  @override
  void initState() {
    super.initState();
    _instantiatePreferences();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Select Currency", style: new TextStyle(
              fontSize: 15.0,
          ),
        ),
      ),
      body: new NestedScrollView(
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
                                hintText: "Search",
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
    );
  }
}