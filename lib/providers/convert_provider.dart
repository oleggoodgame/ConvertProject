import 'dart:async';

import 'package:convertor/model/currency.dart';
import 'package:convertor/request/convert_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'convert_provider.g.dart';

@riverpod
List<Currency> currencyListProvider(ref) {
  return [
    Currency('UAH', 'assets/images/UAH.webp'),
    Currency('USD', 'assets/images/USD.png'),
    Currency('EUR', 'assets/images/EUR.png'),
    Currency('PLN', 'assets/images/PLN.png'),
    Currency('GBP', 'assets/images/GBP.webp'),
    Currency('AUD', 'assets/images/AUD.png'),
    Currency('CNY', 'assets/images/CNY.webp'),
  ];
}

@riverpod
class AmountProvider extends _$AmountProvider {
  @override
  String build() => '0';

  void add(String num) {
    if (state == '0') {
      state = num;
    } else {
      state += num;
    }
  }

  void addPoint() {
    if (!state.contains('.')) {
      state += '.';
    }
  }

  void remove() {
    if (state.isEmpty || state.length == 1) {
      state = '0';
    } else {
      state = state.substring(0, state.length - 1);
    }
  }
}

@riverpod
class ConvertFrom extends _$ConvertFrom {
  @override
  String build() => 'UAH';
  void change(String newValue) => state = newValue;
}

@riverpod
class ConvertTo extends _$ConvertTo {
  @override
  String build() => 'UAH';
  void change(String newValue) => state = newValue;
}

@riverpod
class Result extends _$Result {
  Timer? _debounce;

  @override
  String build() => '0';

  void onAmountChanged({
    required String from,
    required String to,
    required String amount,
  }) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final result = await convert_data(from, to, amount);
      state = result; // Тут має оновитися стан
    });
  }
}

  // void add(String num) {
  //   if (state == '0') {
  //     state = num;
  //   } else {
  //     state += num;
  //   }
  // }

  //   // void remove() {
  //   //   if (state.isEmpty || state.length == 1) {
  //   //     state = '0';
  //   //   } else {
  //   //     state = state.substring(0, state.length - 1);
  //   //   }
  //   // }
  // }
