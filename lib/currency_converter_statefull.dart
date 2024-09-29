import 'package:flutter/material.dart';

class CurrencyConverterStatefullPage extends StatefulWidget {
  const CurrencyConverterStatefullPage(
      {super.key}); //burada bizden bir state method bekliyor. onu oluşturduk ve diğer classı buraya implement ettik.
  @override
  State<CurrencyConverterStatefullPage> createState() =>
      _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterStatefullPage> {
  //State içerisnde olukça önmeli methodlar var. Aslında statefullwidget in beyni gibi
  //setState, dispose, initState gibi...
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      // ignore: prefer_const_constructors
      borderSide: BorderSide(
        //Border çizgisini daha da aktif hale getiriyor.
        color: Colors.blueGrey,
        width: 6.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      // borderRadius: BorderRadius.all(Radius.circular(25))),
      borderRadius: BorderRadius.horizontal(
          left: Radius.circular(5), right: Radius.circular(5)),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 211, 211),

        title: const Text("USD-TL CONVERTER"),
        titleTextStyle: const TextStyle(
          fontSize: 23.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),

        centerTitle: true, //align the title on the center
      ), //header
      backgroundColor: Colors.white,
      //Scaffold header, body ve footer a giriş yapmamızı sağlar.
      body: Center(
        child: Column(
          //Column sadece belirli bir alanı kontrol eder.
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                color: const Color.fromARGB(112, 220, 159, 215),
                child: Text(
                  '${result!=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)} TL',
                  style: const TextStyle(
                    fontSize: 35, //font Size
                      fontWeight: FontWeight.bold, //font Weight
                      color: Color.fromRGBO(250, 0, 0, 0.92)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              margin: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(200, 189, 36, 36),
                ),
                decoration: const InputDecoration(
                  hintText: "Pelease enter the USD amount...",
                  hintStyle: TextStyle(color: Color.fromARGB(60, 18, 17, 17)),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.green, //prefix ıcon
                  filled: true,
                  fillColor: Color.fromARGB(167, 205, 160, 160),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType
                    .numberWithOptions(), //Eger virgül ve noktayı göremk istemiyorsan false yapabilirsin
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  //Tıklandığında olmasını isteğin bölümleri buraya ekliyoruz.
                  setState(() {
                    result = (double.parse(textEditingController.text) * 34.20);
                
                  });
                  /* if (kDebugMode) {
                    print("button clicked");
                  } */
                },
                style: TextButton.styleFrom(
                  elevation: 10.0, //elevaiton yani shadow effect
                  backgroundColor: const Color.fromARGB(255, 83, 64, 255),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(100, 70.0),
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
