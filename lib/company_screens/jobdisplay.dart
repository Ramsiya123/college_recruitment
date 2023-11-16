import 'package:flutter/material.dart';

class JobDetailsPage extends StatelessWidget {
  final Map<String, dynamic> jobDetails;

  JobDetailsPage(this.jobDetails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Job Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobDetails['post'],
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'Department: ${jobDetails['dept']}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Description: ${jobDetails['descrp']}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8),
                Text(
                  'Location: ${jobDetails['location']}',
                  style: TextStyle(fontSize: 18),
                ),
                // Add more details as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
