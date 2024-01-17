import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/material.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  List<DropdownMenuItem<String>> getDropDownItems(List<String> listStrings){
    List<DropdownMenuItem<String>> result = [];
    for(String string in listStrings){
      result.add(DropdownMenuItem<String>(child: Text('$string'),value: '$string',),);
    }
    return result;

  }


  String? selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Center(child: Text('🤑 Coin Ticker')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              // items: <String>['a','b','c'].map<DropdownMenuItem<String>>((String value) => DropdownMenuItem(value : value,child: Text(value))).toList(), onChanged: (value) { print(value); },),
              value: selectedCurrency,
              items: getDropDownItems(currenciesList),
              onChanged: (value) {
                setState(() {
                  selectedCurrency = value;
                });
                print(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
