import 'package:flutter/material.dart';
import 'package:practise/screens/home/buttons.dart';
import 'package:practise/screens/home/viewModel/calculate_view_model.dart';
import 'package:practise/utils/size/size_utils.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar:
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 200.h,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                width: double.infinity,
                child: Consumer<CalculateViewModel>(
                  builder: (context, viewModel, child) {
                    return Text(
                      "${viewModel.numberOne}${viewModel.operand}${viewModel.numberTwo}"
                              .isEmpty
                          ? '0'
                          : "${viewModel.numberOne}${viewModel.operand}${viewModel.numberTwo}",
                      style: TextStyle(color: Colors.black,fontSize: 24),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xffE9F6FF),
                  ),
                  child: Wrap(
                    children: Btn.buttonValues.map((e) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        height: MediaQuery.of(context).size.height / 9,
                        child: buildButton(e),
                      );
                    }).toList(),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(value) {
    return Consumer<CalculateViewModel>(builder: (context, viewModel, child) {
      return InkWell(
        onTap: () {
          debugPrint(value);
          viewModel.onTapButton(value);
          debugPrint(viewModel.operand);
          debugPrint(viewModel.numberOne);
          debugPrint(viewModel.numberTwo);
        },
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: getBtnColor(value),
            ),
          ),
        ),
      );
    });
  }
  Color getBtnColor(value) {
    return [Btn.clr, Btn.del].contains(value)
        ? Colors.red
        : [
            Btn.per,
            Btn.multiply,
            Btn.add,
            Btn.subtract,
            Btn.divide,
            Btn.calculate,
            Btn.history,
          ].contains(value)
            ? Color(0xff00B0D7)
            : Colors.black87;
  }
}
