import 'package:classico/provider/provider_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Provider extends StatefulWidget {
  const Provider({super.key});

  @override
  State<Provider> createState() => _ProviderState();
}

class _ProviderState extends State<Provider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20),
        child: ChangeNotifierProvider<ProviderPage>(
          create: (context) => ProviderPage(),
          child: Consumer<ProviderPage>(
            builder: (context, provider, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    provider.eligibleMessg.toString(),
                    style: TextStyle(
                        color: (provider.isEligible == true)
                            ? Colors.green
                            : Colors.red),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Enter your age",
                    ),
                    onChanged: (value) {
                      provider.checkEligible(int.parse(value));
                    },
                  )
                ],
              );
            },
          ),
        ),
      )),
    );
  }
}
