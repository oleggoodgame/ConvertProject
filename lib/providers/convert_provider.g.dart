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
String _$convertFromHash() => r'b3f5a38fb3da01685efc3d36482fa0a15cc5d3b6';

/// See also [ConvertFrom].
@ProviderFor(ConvertFrom)
final convertFromProvider =
    AutoDisposeNotifierProvider<ConvertFrom, String>.internal(
      ConvertFrom.new,
      name: r'convertFromProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$convertFromHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ConvertFrom = AutoDisposeNotifier<String>;
String _$convertToHash() => r'3c368274e47211c9ff6cd00e7bf7e9a9f38de4a8';

/// See also [ConvertTo].
@ProviderFor(ConvertTo)
final convertToProvider =
    AutoDisposeNotifierProvider<ConvertTo, String>.internal(
      ConvertTo.new,
      name: r'convertToProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$convertToHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ConvertTo = AutoDisposeNotifier<String>;
String _$resultHash() => r'4c3fc2bcc13603c232727e0ceea2e0f109752031';

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
