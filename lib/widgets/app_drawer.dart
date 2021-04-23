import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.3,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            Stack(
              children: [
                Image.asset('assets/images/Rectangle 550.png'),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 18,
                      backgroundImage:
                          ExactAssetImage('assets/images/Group 323.png'),
                      backgroundColor: Color(0xff2799FA),
                    ),
                    title: Text(
                      'Jennifer',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      'San Francisco, CA',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 23.0,
            ),
            Menu(
              icon: Icons.ac_unit,
              label: 'Home',
            ),
            Menu(
              icon: Icons.ac_unit,
              label: 'View Medical Data',
            ),
            Menu(
              icon: Icons.ac_unit,
              label: 'Add Medical Data',
            ),
            Menu(
              icon: Icons.ac_unit,
              label: 'Tip of the Day',
            ),
            Menu(
              icon: Icons.ac_unit,
              label: 'Contact Us',
            ),
            Menu(
              icon: Icons.ac_unit,
              label: 'Tutorials',
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu({@override this.icon, @override this.label});

  final IconData icon;

  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Color(0xFF89CFF0)),
          // Icon(FontAwesomeIcons.home, color: Color(0xFF89CFF0)),
          VerticalDivider(
            indent: 20,
            endIndent: 20,
          ),
        ],
      ),
      title: Text(label),
    );
  }
}
