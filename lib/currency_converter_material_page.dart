import 'package:flutter/material.dart';
class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}
class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result =0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber,
                      width: 1,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    );

    return  Scaffold(
        backgroundColor: Color.fromRGBO(32, 23, 2, 1),
        appBar: AppBar( backgroundColor: Color.fromRGBO(32, 23, 2, 1),
          title: Text("Currency Converter"), 
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'RaleWay'),
          centerTitle: true,
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("INR ${result!=0 ? result.toStringAsFixed(2): 0} ", 
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      hintText: "Enter amount in USD",
                      hintStyle: TextStyle(
                        color: Colors.amber,
                      ),
                      prefixIcon: Icon(Icons.monetization_on_outlined), 
                      prefixIconColor: Colors.amber,
                      filled: true,
                      fillColor: Colors.black,
                      focusedBorder: border,
                      enabledBorder: border,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45.0),
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    result=double.parse(textEditingController.text) * 81;
                  });
                }, 
                style: ButtonStyle(
                  elevation: WidgetStatePropertyAll(15),
                  backgroundColor: WidgetStatePropertyAll(Colors.amber),
                  foregroundColor: WidgetStatePropertyAll(Colors.black),
                  minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)) 
                ),
                child: Text("Convert"),
                ),
              ),
            ],
          ),
        ),
      );
  }
}

