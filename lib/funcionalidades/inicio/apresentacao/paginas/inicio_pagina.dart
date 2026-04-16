import 'package:anjo_app/funcionalidades/inicio/apresentacao/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

class InicioPagina extends StatelessWidget {
  const InicioPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        drawer: MenuLateralWrapper(),
        drawerEdgeDragWidth: MediaQuery.of(context).size.width * 0.5,
        body: Center(child: Text('Início')),
      ),
    );
  }
}
