import 'package:anjo_app/funcionalidades/inicio/apresentacao/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Páginas
import 'funcionalidades/inicio/apresentacao/paginas/inicio_pagina.dart';
import 'funcionalidades/mercados/apresentacao/paginas/mercados_pagina.dart';
import 'funcionalidades/trade/apresentacao/paginas/trade_pagina.dart';
import 'funcionalidades/ativos/apresentacao/paginas/ativos_pagina.dart';

void main() {
  runApp(const ProviderScope(child: AnjoApp()));
}

class AnjoApp extends StatelessWidget {
  const AnjoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ANJO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  int _indexAtual = 0;

  final List<Widget> _paginas = const [
    InicioPagina(),
    MercadosPagina(),
    TradePagina(),
    AtivosPagina(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 👇 Drawer só aparece na Home (opcional, mas elegante)
      drawer: _indexAtual == 0 ? const MenuLateralWrapper() : null,

      body: _paginas[_indexAtual],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexAtual,
        onTap: (index) {
          setState(() => _indexAtual = index);
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Mercados',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.swap_horiz), label: 'Trade'),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Ativos',
          ),
        ],
      ),
    );
  }
}
