import 'package:dandy27_store/common/custom_drawer/custon_drawer_header.dart';
import 'package:flutter/material.dart';

import 'drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          CustonDrawerHeader(),
          DrawerTile(
            iconData: Icons.home,
            title: 'Inicio',
            page: 0,
          ),
          DrawerTile(
            iconData: Icons.playlist_add_check,
            title: 'Produtos',
            page: 1,
          ),
          DrawerTile(
            iconData: Icons.playlist_add_check,
            title: 'Meus pedidos',
            page: 2,
          ),
          DrawerTile(
            iconData: Icons.location_on,
            title: 'Lojas',
            page: 3,
          ),
        ],
      ),
    );
  }
}
