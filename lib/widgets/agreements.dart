import 'package:flutter/material.dart';

import '../financy_docs.dart';

class Agreements extends StatelessWidget {
  const Agreements({super.key});

  List<BasePage> get pages => const [
        BasePage(
          title: 'EULA',
          assetPath: MarkdownAssets.eula,
          namedRoute: '/eula',
        ),
        BasePage(
          title: 'Privacy Policy',
          assetPath: MarkdownAssets.privacyPolicy,
          namedRoute: '/privacy_policy',
        ),
        BasePage(
          title: 'Terms of Service',
          assetPath: MarkdownAssets.termsOfService,
          namedRoute: '/terms_of_service',
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
                            Navigator.pushNamed(
                              context,
                              e.namedRoute,
                            );
                          },
                          child: Text(
                            e.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
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
