import 'package:convertor/providers/convert_provider.dart';
import 'package:convertor/widgets/card_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GridViewWidget extends ConsumerWidget {
  // треба створити клас buttons як номер телефону допустим вводити, АЛЕ я хочу щоб справа знизу у мене була Іконка, тобто мені підійде просто String від 0-9 і . Але я хочу додати іконку, як це найкращее реалізувати?
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.2,

      shrinkWrap: true,
      children: [
        CardButton(
          label: '9',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('9');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '8',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('8');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '7',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('7');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '6',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('6');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '5',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('5');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '4',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('4');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '3',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('3');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '2',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('2');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '1',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('1');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          label: '.',
          onTap: () {
            ref.read(amountProviderProvider.notifier).addPoint();
          },
        ),
        CardButton(
          label: '0',
          onTap: () {
            ref.read(amountProviderProvider.notifier).add('0');
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
        CardButton(
          icon: Icons.backspace,
          onTap: () {
            ref.read(amountProviderProvider.notifier).remove();
            ref
                .read(resultProvider.notifier)
                .update(
                  from: ref.read(convertProvider_1),
                  to: ref.read(convertProvider_2),
                  amount: ref.read(amountProviderProvider),
                );
          },
        ),
      ],
    );
  }
}
