import 'package:flutter/cupertino.dart';
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result =0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return  CupertinoPageScaffold(
        backgroundColor: CupertinoColors.inactiveGray,
        navigationBar: CupertinoNavigationBar( backgroundColor: CupertinoColors.white, brightness: Brightness.light,
          middle: Text("Currency Converter", ), 
          
          ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("INR ${result!=0 ? result.toStringAsFixed(2): 0} ", 
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    color: CupertinoColors.white,
                    ),
                    placeholder: "Please enter the amount in USD",
                    prefix: Icon(CupertinoIcons.money_dollar),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: CupertinoButton(onPressed: () {
                  setState(() {
                    result=double.parse(textEditingController.text) * 81;
                  });
                }, 
                color: CupertinoColors.black,
                child: Text("Convert"),
                ),
              ),
            ],
          ),
        ),
      );
  }
}