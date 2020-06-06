import 'package:flutter/material.dart';
import 'package:lets_cook/models/settings.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  var settings = Settings();

  Widget _createSwitch({
    @required String title,
    @required String subtitle,
    @required bool value,
    @required Function onChanged,
  }) {
    return SwitchListTile.adaptive(
      value: value,
      onChanged: onChanged,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Text(
              'Filtros de refeições',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _createSwitch(
                  title: 'Sem Glutén',
                  subtitle: 'Só exibe refeições sem glutén!',
                  value: settings.isGlutenFree,
                  onChanged: (value) {
                    setState(() => settings.isGlutenFree = value);
                  },
                ),
                _createSwitch(
                  title: 'Sem Lactose',
                  subtitle: 'Só exibe refeições sem Lactose!',
                  value: settings.isLactoseFree,
                  onChanged: (value) {
                    setState(() => settings.isLactoseFree = value);
                  },
                ),
                _createSwitch(
                  title: 'Vegana',
                  subtitle: 'Só exibe refeições veganas!',
                  value: settings.isVegan,
                  onChanged: (value) {
                    setState(() => settings.isVegan = value);
                  },
                ),
                _createSwitch(
                  title: 'Vegetariana',
                  subtitle: 'Só exibe refeições vegetarianas!',
                  value: settings.isVegetarian,
                  onChanged: (value) {
                    setState(() => settings.isVegetarian = value);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
