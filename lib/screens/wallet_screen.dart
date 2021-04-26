import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  final String routeName = '/wallet-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Wallet',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Color(0xff4A50F0),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Availiable Balance',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                '0/-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(
                    0xff6DA367,
                  ),
                  fontSize: 20,
                ),
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'Earn Shopperrr Cash by referring\nwith a friend',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Text(
                'How it works',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ListTile(
                leading: Container(
                  width: 30,
                  child: Image.asset('assets/images/share.png'),
                ),
                title: Text(
                  'Repudiandae occaecati quis unde quisbusdam commodi,Modi suscpit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ListTile(
                leading: Container(
                  width: 30,
                  child: Image.asset('assets/images/click.png'),
                ),
                title: Text(
                  'Repudiandae occaecati quis unde quisbusdam commodi,Modi suscpit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ListTile(
                leading: Container(
                  width: 30,
                  child: Image.asset('assets/images/id-card.png'),
                ),
                title: Text(
                  'Repudiandae occaecati quis unde quisbusdam commodi,Modi suscpit',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Container(
                width: MediaQuery.of(context).size.height * 0.35,
                height: MediaQuery.of(context).size.height * 0.35,
                child: Image.asset(
                  'assets/images/jump.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
