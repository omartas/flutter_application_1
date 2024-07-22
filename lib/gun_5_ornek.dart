import 'package:flutter/material.dart';
import 'package:flutter_application_1/user.dart';

class Ornek5 extends StatelessWidget {
  final List<User> users = [
    User(name: 'Omer Tas ', yas: 24),
    User(name: 'Orhan X', yas: 30),
    User(name: 'Furkan Emir', yas: 22),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Title'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.list), text: 'List'),
              Tab(icon: Icon(Icons.info), text: 'Details'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomeTab(),
            ListTab(users: users),
            DetailsTab(),
          ],
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('AnaSayfa'),
    );
  }
}

class ListTab extends StatelessWidget {
  final List<User> users;

  ListTab({required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(users[index].name),
          subtitle: Text('Age: ${users[index].yas}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserDetailsScreen(user: users[index]),
              ),
            );
          },
        );
      },
    );
  }
}

class DetailsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Details'),
    );
  }
}

class UserDetailsScreen extends StatelessWidget {
  final User user;

  UserDetailsScreen({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${user.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Age: ${user.yas}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}