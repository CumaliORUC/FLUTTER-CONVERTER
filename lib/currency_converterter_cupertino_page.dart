import 'package:flutter/cupertino.dart';

class CurrencyConverterterCupertinoPage extends StatefulWidget {
  const CurrencyConverterterCupertinoPage({super.key});

  @override
  State<CurrencyConverterterCupertinoPage> createState() => _CurrenState();
}

class _CurrenState extends State<CurrencyConverterterCupertinoPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0.0;
  void convert() {
    result = (double.parse(textEditingController.text) * 34.20);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 118, 116, 116),
      navigationBar: const CupertinoNavigationBar(
        middle: Text("USD-TL CONVERTER"),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} TL',
                style: const TextStyle(fontSize: 30, color: CupertinoColors.lightBackgroundGray),
              ), 
              const SizedBox(height: 10.0),
              CupertinoTextField(
               
                prefix: const Icon(CupertinoIcons.money_dollar,
                    color: CupertinoColors.activeGreen, size: 35),
                placeholder: "Please enter your amount",
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 237, 239, 233),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomRight: Radius.circular(15),),),
                keyboardType: const TextInputType.numberWithOptions(),
                controller: textEditingController,
              ),
              const SizedBox(height: 10.0),
              SizedBox(
                width: double.infinity,
                child: CupertinoButton(
                  onPressed: convert,
                  color: const Color.fromARGB(255, 39, 68, 173),
                  borderRadius: BorderRadius.circular(16),
                  child: const Text("Convert"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
