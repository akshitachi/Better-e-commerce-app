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
                    leading: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(
                          '/profile-screen',
                        );
                      },
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage:
                            ExactAssetImage('assets/images/Group 323.png'),
                        backgroundColor: Color(0xff2799FA),
                      ),
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
              height: 30.0,
            ),
            Menu(
              assetName: 'Path 102',
              label: 'HOME',
              navigator: '/home-screen',
            ),
            Menu(
              assetName: 'Path 103',
              label: 'EXPLORE',
            ),
            Menu(
              assetName: 'Path 50',
              label: 'WALLET',
              navigator: '/wallet-screen',
            ),
            Menu(
              assetName: 'bell',
              label: 'NOTIFICATIONS',
              navigator: '/notification-screen',
            ),
            Menu(
              assetName: 'Path 148',
              label: 'YOUR ORDERS',
              navigator: '/orders-screen',
            ),
            Menu(
              assetName: 'Icon feather-shopping-cart',
              label: 'CART',
              navigator: '/cart-screen',
            ),
            Menu(
              assetName: 'pin',
              label: 'PRIVACY POLICY',
              navigator: '/privacy-policy',
            ),
            Menu(
              assetName: 'Path 104',
              label: 'SETTINGS',
              navigator: '/settings',
            ),
            Menu(
              assetName: 'search',
              label: 'SEARCH',
              navigator: '/search-screen',
            ),
            Menu(
              label: 'ORDER TRACKING',
              navigator: '/order-tracking',
            ),
            Menu(
              label: 'CHANGE PASSWORD',
              navigator: '/change-password',
            ),
            Menu(
              label: 'LOG OUT',
              navigator: '/logout',
            ),
            Menu(
              label: 'FEEDBACK',
              navigator: '/feedback-screen',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  IconButton(
                    icon: Image.asset(
                      'assets/images/Path 1.png',
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/Path 2.png',
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset(
                      'assets/images/Path 3.png',
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu({
    this.assetName,
    @override this.label,
    this.navigator,
  });

  final String assetName;
  final String navigator;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(navigator);
      },
      leading: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(
            AssetImage(
              'assets/images/$assetName.png',
            ),
            color: Color(0xff0A0708),
          )
        ],
      ),
      title: Text(label),
    );
  }
}
