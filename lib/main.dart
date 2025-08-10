import 'package:convertor/providers/convert_provider.dart';
import 'package:convertor/widgets/convert_widget.dart';
import 'package:convertor/widgets/grid_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MyHomePage());
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ConvertWidget(convertProvider_1, amountProviderProvider),
          const SizedBox(height: 14),
          ConvertWidget(convertProvider_2, resultProvider),
          const Spacer(),
          const GridViewWidget(),
        ],
      ),
    );
  }
}
