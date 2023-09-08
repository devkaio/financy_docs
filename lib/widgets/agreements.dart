import 'package:flutter/material.dart';

import '../financy_docs.dart';
import 'base_page.dart';

class Agreements extends StatelessWidget {
  const Agreements({super.key});

  List<BasePage> get pages => [
        BasePage(
          title: 'EULA',
          assetPath: const FinancyDocs().eula,
        ),
        BasePage(
          title: 'Privacy Policy',
          assetPath: const FinancyDocs().privacyPolicy,
        ),
        BasePage(
          title: 'Terms of Service',
          assetPath: const FinancyDocs().termsOfService,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agreements'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: pages
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => e,
                                ),
                              );
                            },
                            child: Text(
                              e.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ))
                      ],
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
