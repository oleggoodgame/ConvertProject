import 'package:convertor/model/currency.dart';
import 'package:convertor/providers/convert_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class ConvertWidget extends ConsumerWidget {
  final AutoDisposeNotifierProviderImpl<dynamic, String> type_ref1;
  final AutoDisposeNotifierProvider<dynamic, String> type_ref2;

  ConvertWidget(this.type_ref1, this.type_ref2, {super.key});
  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currencyList = ref.watch(currencyListProviderProvider);
    final selectedCurrencyName = ref.watch(type_ref1);
    final selectedCurrency = currencyList.firstWhere(
      (c) => c.name == selectedCurrencyName,
      orElse: () => currencyList.first,
    );

    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
        color: Colors.grey.shade400,
      ),
      child: Row(
        children: [
          Expanded(
            child: DropdownButtonFormField<Currency>(
              decoration: const InputDecoration(border: InputBorder.none),
              value: selectedCurrency,
              items: currencyList.map((country) {
                return DropdownMenuItem(
                  value: country,
                  child: Row(
                    children: [
                      Image.asset(
                        country.photoPath,
                        height: 24,
                        width: 32,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(width: 8),
                      Text(country.name),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) {
                ref.read(type_ref1.notifier).state = value?.name ?? 'UAH';
              },
            ),
          ),
          Text(ref.watch(type_ref2)),
        ],
      ),
    );
  }
}
