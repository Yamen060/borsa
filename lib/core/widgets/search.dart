import 'package:flutter/material.dart';
import 'package:stock_market/core/theming/colors.dart';
import 'package:stock_market/core/theming/styles.dart';

class Search extends StatelessWidget {
  Search({super.key});

  final TextEditingController _searchController = TextEditingController();

  final List<String> suggestions = [
    'Economy',
    'Crypto Market',
    'Economy',
    'Company News',
  ];

  final List<String> searchHistory = [
    'Economy',
    'Crypto Market',
    'Company News',
    'Economy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search', style: TextStyles.font20blackSemiBold),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 2,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search input field
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyles.font12averagegrayreguler,
                prefixIcon: Icon(Icons.search, color: ColorsManager.darkorange),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 20,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Suggestions label
            Text('Suggestions', style: TextStyles.font16blackMedium),
            const SizedBox(height: 8),

            // Suggestions chips
            Wrap(
              spacing: 10,
              children: suggestions.map((text) {
                return Chip(
                  label: Text(text),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: ColorsManager.darkbrownishred,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: Colors.white,
                  labelStyle: const TextStyle(color: ColorsManager.darkorange),
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            // Search History header with clear all
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search History', style: TextStyles.font16blackMedium),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Clear all',
                    style: TextStyle(color: ColorsManager.mediumcoolgray),
                  ),
                ),
              ],
            ),

            // Search history list
            Expanded(
              child: ListView.builder(
                itemCount: searchHistory.length,
                itemBuilder: (context, index) {
                  final item = searchHistory[index];
                  return ListTile(
                    leading: const Icon(Icons.access_time_outlined, size: 18),
                    title: Text('#$item', style: TextStyles.font12blackreguler),
                    trailing: InkWell(
                      onTap: () {},
                      child: const Icon(Icons.close, size: 12),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
