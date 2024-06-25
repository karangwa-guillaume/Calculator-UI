import 'package:calculator/button_values.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize=MediaQuery .of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            //output
            Expanded(
              child: SingleChildScrollView(
                reverse: true,
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "0",
                    style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),
              //buttons
              Wrap(
                children: Btn.buttonValues
                .map(
                  (value) => SizedBox(
                    width:value == Btn.n0? screenSize.width /2: (screenSize.width / 4),
                    height: screenSize.width / 5,
                    child: buildButton(value),
                    ),
                  )
                  .toList(),
              ),
            ],
            
            ),
      ),
    );
  }
  Widget buildButton(value){
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: getBtnColor(value),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white24,
           ),
          borderRadius: BorderRadius.circular(100),
          ),
        child: InkWell(
          onTap: () {},
          child: Center(
            child: Text(
              value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            ),
            ),
        ),
      ),
    );
  }

  Color getBtnColor(value){
    return [Btn.del,Btn.clr].contains(value)
        ?Color.fromARGB(255, 171, 68, 152)
        :[Btn.per,
        Btn.multiply,
        Btn.divide,
        Btn.substract,
        Btn.add,
        Btn.calculate
        ].contains(value)?Color.fromARGB(255, 92, 172, 128):Colors.black87;
  }
}