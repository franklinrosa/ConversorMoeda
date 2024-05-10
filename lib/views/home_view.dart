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
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/image/logo.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: DropdownButton(
                            items: const [], onChanged: (value) {})),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
                child: ElevatedButton(
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
