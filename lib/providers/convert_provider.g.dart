// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convert_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currencyListProviderHash() =>
    r'693f9b1915a33364efb6c656caf83f30a68dc65f';

/// See also [currencyListProvider].
@ProviderFor(currencyListProvider)
final currencyListProviderProvider =
    AutoDisposeProvider<List<Currency>>.internal(
      currencyListProvider,
      name: r'currencyListProviderProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currencyListProviderHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CurrencyListProviderRef = AutoDisposeProviderRef<List<Currency>>;
String _$amountProviderHash() => r'92cee13f4bbf73708ce320b52e2e6c1353868391';

/// See also [AmountProvider].
@ProviderFor(AmountProvider)
final amountProviderProvider =
    AutoDisposeNotifierProvider<AmountProvider, String>.internal(
      AmountProvider.new,
      name: r'amountProviderProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$amountProviderHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AmountProvider = AutoDisposeNotifier<String>;
String _$resultHash() => r'cfeac221f0d286d6a5791d71c76b6fa1ecf0d668';

/// See also [Result].
@ProviderFor(Result)
final resultProvider = AutoDisposeNotifierProvider<Result, String>.internal(
  Result.new,
  name: r'resultProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$resultHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Result = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
