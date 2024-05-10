import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            left: 30,
            right: 30,
            bottom: 20,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/image/logo.png',
                width: 200,
                height: 200,
              ),
              const CurrencyBox(),
              const SizedBox(height: 10),
              const CurrencyBox(),
              const SizedBox(height: 50),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'CONVERTER',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
