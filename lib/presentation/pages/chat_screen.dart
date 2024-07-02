import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Messages',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ONLINE USERS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OnlineUserWidget(
                      imageUrl: 'assets/hellomyapp.png',
                      name: 'Christopher',
                    ),
                    OnlineUserWidget(
                      imageUrl: 'assets/hellomyapp.png',
                      name: 'Reese',
                    ),
                    OnlineUserWidget(
                      imageUrl: 'assets/hellomyapp.png',
                      name: 'Jeffrey',
                    ),
                    OnlineUserWidget(
                      imageUrl: 'assets/hellomyapp.png',
                      name: 'Laura',
                    ),
                    OnlineUserWidget(
                      imageUrl: 'assets/hellomyapp.png',
                      name: 'Mald',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              MessageTile(
                imageUrl: 'assets/hellomyapp.png',
                name: 'Ellen Lambert',
                message: 'Hey! How\'s it going?',
                time: '04:04AM',
                unreadCount: 3,
              ),
              MessageTile(
                imageUrl: 'assets/hellomyapp.png',
                name: 'Connor Frazier',
                message: 'What kind of music do you like?',
                time: '08:58PM',
                unreadCount: 1,
              ),
              MessageTile(
                imageUrl: 'assets/hellomyapp.png',
                name: 'Josephine Gordon',
                message: 'Sounds good to me!',
                time: '11:33PM',
              ),
              MessageTile(
                imageUrl: 'assets/hellomyapp.png',
                name: 'Timothy Steele',
                message: 'Hi Tina. How\'s your night going?',
                time: '06:58PM',
              ),
              MessageTile(
                imageUrl: 'assets/hellomyapp.png',
                name: 'Lou Quinn',
                message: 'What did you do over the weekend?',
                time: '09:43PM',
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 2, // Highlighting the "Messages" tab
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.grey,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.stream),
      //       label: 'Streams',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //       label: 'Messages',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications),
      //       label: 'Notifications',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'Profiles',
      //     ),
      //   ],
      // ),
    );
  }
}

class OnlineUserWidget extends StatelessWidget {
  final String imageUrl;
  final String name;

  const OnlineUserWidget({
    super.key,
    required this.imageUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(imageUrl),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            name,
            style: const TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;
  final int unreadCount;

  const MessageTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.message,
    required this.time,
    this.unreadCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(imageUrl),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  message,
                  style: TextStyle(color: Colors.grey[600]),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: TextStyle(color: Colors.grey[600], fontSize: 12.0),
              ),
              if (unreadCount > 0)
                Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    unreadCount.toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
