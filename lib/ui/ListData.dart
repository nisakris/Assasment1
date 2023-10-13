import 'package:flutter/material.dart';

class ListData extends StatefulWidget {
  final String? fullname;
  final String? email;
  final String? address;

  const ListData({Key? key, this.fullname, this.email, this.address})
      : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Personal Data'),
      ),
      body: Card(
        margin: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FullName',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                widget.fullname ?? 'N/A',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 16.0),
              Text(
                'Email',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.blue),
              ),
              Text(
                widget.email ?? 'N/A',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 16.0),
              Text(
                'Address',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                widget.address ?? 'N/A',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
