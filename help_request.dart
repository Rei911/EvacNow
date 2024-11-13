import 'package:flutter/material.dart';

class EvacNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Color(0xFFB8BAC6), // Updated top bar color
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 24, color: Color(0xFF7D7D7D)),
                  Text(
                    'EvacNow',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Text color remains white
                    ),
                  ),
                  Icon(Icons.account_circle, size: 24, color: Color(0xFF7D7D7D)),
                ],
              ),
            ),
            // Content Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'STATUS HELP REQUEST',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7D7D7D),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color(0xFFDEDFE8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Help Request',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Permintaan Bantuan anda sedang diproses, mohon tetap bersabar dan sebisa mungkin mencari tempat yang aman.',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              // Handle action for link
                            },
                            child: Text(
                              'Klik disini untuk melihat panduan keselamatan',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3125E5),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          StatusItem(
                            status: 'Mengirim Bantuan',
                            description: 'Status Bantuan',
                          ),
                          StatusItem(
                            status: 'Dalam Perjalanan',
                            description: 'Status Tim Penyelamat',
                          ),
                          StatusItem(
                            status: 'Belum Aman',
                            description: 'Status Pengguna',
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              // Handle Done action
                            },
                            child: Text(
                              'Done',
                              style: TextStyle(color: Colors.white), // Set text color to white
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF6A4C93),  // Use backgroundColor instead of primary
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.symmetric(vertical: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Footer Section
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Color(0xFFD9D9D9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FooterItem(icon: Icons.location_on, label: 'Evacuate'),
                  FooterItem(icon: Icons.home, label: 'Home'),
                  FooterItem(icon: Icons.notifications, label: 'Updates'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusItem extends StatelessWidget {
  final String status;
  final String description;

  StatusItem({required this.status, required this.description});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(  // Make the row scrollable horizontally
      scrollDirection: Axis.horizontal,  // Allow horizontal scrolling
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0xFFB6BAC8), // Updated background color to #B6BAC8
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFF000000), width: 2), // Black border
            ),
            child: Center(
              child: Text(
                'A', // This can represent an icon or letter; adjust as needed
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White color for the icon
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF000000), // Black color for the description text
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
          SizedBox(width: 10),
          Text(
            status,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF000000), // Black color for the status text
            ),
          ),
        ],
      ),
    );
  }
}

class FooterItem extends StatelessWidget {
  final IconData icon;
  final String label;

  FooterItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 24, color: Colors.white),  // Set icon color to white
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(fontSize: 12, color: Color(0xFF7D7D7D)),
        ),
      ],
    );
  }
}
