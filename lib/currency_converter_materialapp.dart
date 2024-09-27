import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  build(BuildContext context) {
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
                child: const Text(
                  "Duru ve GULCEM",
                  style: TextStyle(
                      fontSize: 35, //font Size
                      fontWeight: FontWeight.bold, //font Weight
                      color: Color.fromRGBO(250, 0, 0, 0.92)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              margin: const EdgeInsets.all(8.0),
              child: const TextField(
                style: TextStyle(
                  color: Color.fromARGB(200, 189, 36, 36),
                ),
                decoration: InputDecoration(
                  hintText: "Lütfen gerekli değeri giriniz",
                  hintStyle: TextStyle(color: Color.fromARGB(60, 18, 17, 17)),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.green, //prefix ıcon
                  filled: true,
                  fillColor: Color.fromARGB(167, 205, 160, 160),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType
                    .numberWithOptions(), //Eger virgül ve noktayı göremk istemiyorsan false yapabilirsin
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  //Tıklandığında olmasını isteğin bölümleri buraya ekliyoruz.
                  //
                  // debugPrint("hayat çok güzelmiş"); ya da şu şekilde yapabiliriz.
                  if (kDebugMode) {
                    print("button clicked");
                  }
                },
                style: ButtonStyle(
                  elevation: const WidgetStatePropertyAll(
                      10.0), //elevaiton yani shadow effect
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: const WidgetStatePropertyAll(
                    Color.fromARGB(255, 83, 64, 255),
                  ),
                  foregroundColor: const WidgetStatePropertyAll(Colors.white),
                  minimumSize: const WidgetStatePropertyAll(
                    Size(double.infinity, 5.0),
                  ),
                ),
                child: const Text(
                  "Convert",
                  style: TextStyle(fontSize: 25.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
