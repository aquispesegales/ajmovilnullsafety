import 'package:movilaj/src/seguimiento/views/tramiteFisico_view.dart';
import 'package:movilaj/src/seguimiento/views/tramitePlataforma_view.dart';
import 'package:movilaj/src/utils/variables.dart' as variable;

import 'package:flutter/material.dart';
import 'package:movilaj/src/utils/estilos.dart' as estiloTexto;
import 'package:movilaj/src/utils/colores.dart' as colores;
import 'package:movilaj/src/views/menu_principal_view.dart';

class SeguimientoTramitesView extends StatefulWidget {
  @override
  _SeguimientoTramitesViewState createState() =>
      _SeguimientoTramitesViewState();
}

class _SeguimientoTramitesViewState extends State<SeguimientoTramitesView> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "${variable.BUSQUEDA_TRAMITES}",
            style: estiloTexto.estiloTextoBar,
          ),
        ),
        drawer: MenuPrincipal(),

        //body: _widgetOptions.elementAt(_selectedIndex),

        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _selectedIndex = index);
            },
            children: <Widget>[
              Container(
                child: TramiteFisicoView(),
              ),
              Container(
                child: TramitePlataforma(),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                size: 15,
                color: colores.blue_grey_darken_1,
              ),
              title: Text(
                'Trámites en físico',
                style: estiloTexto.estiloTextoNormal,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
                size: 15,
                color: colores.blue_grey_darken_1,
              ),
              title: Text(
                'Trámites en plataforma',
                style: estiloTexto.estiloTextoNormal,
              ),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigo,
          onTap: _onItemTapped,
        ));
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    _pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeOut);

    setState(() {});
  }
}