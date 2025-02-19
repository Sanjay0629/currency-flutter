import 'package:flutter/material.dart';

class CurrencyConverterMaterialpage extends StatelessWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        color: Colors.black,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '0',
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              //margin: EdgeInsets.all(5),
              child: TextField(
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please Enter The Amount in USD',
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            //buttons
            //raised
            //appears like a text
            TextButton(
              onPressed: () {
                debugPrint('Button clicked');
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
