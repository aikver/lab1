import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  double _currentSliderPrimaryValue = 0.2;
  double _currentSliderSecondaryValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assests/SciCom.png'),
            ),
            SizedBox(height: 16),
            Text("Register"),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter UserName',
                prefixIcon: Icon(Icons.report_gmailerrorred),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Enter Password',
                prefixIcon: Icon(Icons.key),
              ),
            ),
            SizedBox(height: 16),
            Text("Weight"),
            Slider(
              value: _currentSliderPrimaryValue,
              max: 100,
              divisions: 100,
              label: _currentSliderPrimaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderPrimaryValue = value;
                });
              },
            ),
            Text("Height"),
            Slider(
              value: _currentSliderSecondaryValue,
              max: 100,
              divisions: 100,
              label: _currentSliderSecondaryValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderSecondaryValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}