import 'package:conversor_curso/app/controllers/home_controller.dart';
import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late HomeController homeController;

  final TextEditingController fromText = TextEditingController();

  final TextEditingController toText = TextEditingController();

  @override
  void initState() {
    super.initState();

    homeController = HomeController(fromText: fromText, toText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
            child: Column(children: [
              Image.asset(
                'assets/image/logo3.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 50),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: homeController.toText,
                items: homeController.currencies,
                onChanged: (CurrencyModel? model) {
                  setState(() {
                    homeController.toCurrency =
                        model ?? homeController.toCurrency;
                  });
                },
              ),
              const SizedBox(height: 10),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: homeController.fromText,
                items: homeController.currencies,
                onChanged: (CurrencyModel? model) {
                  setState(() {
                    homeController.fromCurrency =
                        model ?? homeController.fromCurrency;
                  });
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 116, 87, 1),
                ),
                onPressed: () {
                  homeController.convert();
                },
                child: const Text('CONVERTER'),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
