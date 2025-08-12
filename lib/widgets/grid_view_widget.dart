import 'package:convertor/providers/convert_provider.dart';
import 'package:convertor/widgets/card_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GridViewWidget extends ConsumerWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttons = ['9', '8', '7', '6', '5', '4', '3', '2', '1', '.', '0'];

    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        // кнопки з цифрами та крапкою
        ...buttons.map(
          (label) => CardButton(
            label: label,
            onTap: () {
              if (label == '.') {
                ref.read(amountProviderProvider.notifier).addPoint();
              } else {
                ref.read(amountProviderProvider.notifier).add(label);
              }

              ref.read(resultProvider.notifier).onAmountChanged(
                    from: ref.read(convertFromProvider),
                    to: ref.read(convertToProvider),
                    amount: ref.read(amountProviderProvider),
                  );
            },
          ),
        ),

        // кнопка видалення
        CardButton(
          icon: Icons.backspace,
          onTap: () {
            ref.read(amountProviderProvider.notifier).remove();
            ref.read(resultProvider.notifier).onAmountChanged(
                  from: ref.read(convertFromProvider),
                  to: ref.read(convertToProvider),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
      ],
    );
  }
}
