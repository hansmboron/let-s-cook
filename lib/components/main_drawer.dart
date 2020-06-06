import 'package:flutter/material.dart';
import 'package:lets_cook/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(
      {@required IconData icon,
      @required String label,
      @required Function onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
        size: 24,
      ),
      title: Text(
        label,
        style: TextStyle(fontSize: 22),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Colors.black,
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomRight,
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            child: Text(
              "Let's cook",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(height: 20),
          _createItem(
            icon: Icons.home,
            label: 'Home',
            onTap: () => Navigator.of(context).pop(),
          ),
          Divider(height: 0),
          _createItem(
            icon: Icons.settings,
            label: 'Configurações',
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(AppRoutes.SETTING);
            },
          ),
          Divider(height: 0),
          _createItem(
            icon: Icons.info,
            label: 'Sobre',
            onTap: () {},
          ),
          Divider(height: 0),
          _createItem(
            icon: Icons.exit_to_app,
            label: 'Sair',
            onTap: () {},
          ),
          Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Text(
              'v1.0.0',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
