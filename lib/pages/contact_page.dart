import 'package:flutter/material.dart';
import 'package:my_website/widgets/footer.dart';
import 'package:my_website/widgets/common_app_bar.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(), // 공통 AppBar 사용
      drawer: Drawer(
        // 왼쪽 드로어 설정
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('exotic ordinary'),
              onTap: () {
                Navigator.pushNamed(context, '/exotic-ordinary');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('the exotic boutique'),
              onTap: () {
                Navigator.pushNamed(context, '/the-exotic-boutique');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('dusty draft'),
              onTap: () {
                Navigator.pushNamed(context, '/dusty-draft');
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text('Contact'),
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo_draft_transparentBG.png', height: 200),
            SizedBox(height: 20),
            Text(
              'Welcome to the Contact Page!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      bottomNavigationBar: buildFooter(),
    );
  }
}

// C:\Users\user\my_website\assets\logo_draft_transparentBG.png