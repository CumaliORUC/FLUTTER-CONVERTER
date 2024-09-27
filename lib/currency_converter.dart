import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//in this class widgetsetpropertyall was not used.
//App bar is added.

//to apply the converter;
/*
 1. Create a variable that stores the converted currency
 2. Crete a function that multiples the value given by textfield
 3. Store the value in the variable that we created
 4. Display the varible
*/

class CurrencyConverterPage1 extends StatelessWidget {
  const CurrencyConverterPage1({super.key});
  @override
  
 
  build(BuildContext context) {
    //  1. Create a variable that stores the converted currency
     double result=0;
       final TextEditingController textEditingController=TextEditingController();
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
       
        title: const Text(" USD-TL CONVERTER"),
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
                  result.toString(),
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
               controller:textEditingController,
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
                
                onPressed: ()  {
                  //Tıklandığında olmasını isteğin bölümleri buraya ekliyoruz.
                  
                   result=double.parse(textEditingController.text)*34.30;
                  // debugPrint("hayat çok güzelmiş"); ya da şu şekilde yapabiliriz.
                  if (kDebugMode) {
                    print("button clicked");
                  }
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
