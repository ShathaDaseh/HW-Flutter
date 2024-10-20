import 'package:flutter/material.dart'; 

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(), 
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'), 
      ),

      body: Column(
        children: [
          ProfileCard(),  
          ActionIcons(),  
          SettingsList(), 
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),  
      child: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(16.0), 
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,  
                  backgroundImage: AssetImage('assets/images/profile.jpg'), 
                ),
                SizedBox(height: 8.0),  
                Text(
                  'Shatha Ayman Daseh',
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                Text(
                  'A trendsetter',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                SizedBox(height: 8.0), 

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ProfileStat('Collect', 846),
                    ProfileStat('Attention', 51),
                    ProfileStat('Track', 267),
                    ProfileStat('Coupons', 39),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

 class ProfileStat extends StatelessWidget {
  final String label; 
  final int count;  

  ProfileStat(this.label, this.count);  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count.toString(),  
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        Text(label),  
      ],
    );
  }
}

 class ActionIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
      children: [
        ActionIcon(Icons.account_balance_wallet, 'Wallet'),
        ActionIcon(Icons.local_shipping, 'Delivery'),
        ActionIcon(Icons.message, 'Message'),
        ActionIcon(Icons.support, 'Service'),
      ],
    );
  }
}

 class ActionIcon extends StatelessWidget {
  final IconData icon;  
  final String label;  
  ActionIcon(this.icon, this.label);  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40.0),  
        Text(label),  
      ],
    );
  }
}

 
 class SettingsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(  
        children: [
          ListTile(
            leading: Icon(Icons.location_on),  
            title: Text('Address'),  
            subtitle: Text('Ensure your harvesting address'),  
          ),
          ListTile(
            leading: Icon(Icons.lock),  
            title: Text('Privacy'),
            subtitle: Text('System permission change'),
          ),
          ListTile(
            leading: Icon(Icons.settings),  
            title: Text('General'),
            subtitle: Text('Basic functional settings'),
          ),
          ListTile(
            leading: Icon(Icons.notifications),  
            title: Text('Notification'),
            subtitle: Text('Take over the news in time'),
          ),
        ],
      ),
    );
  }
}
