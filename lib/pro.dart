import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/fpage.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<String> selected = {'Computer Science'};
  int _value = 1;
  bool agreedToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FROM'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Major",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              SegmentedButton(
                segments: const [
                  ButtonSegment(
                    value: 'Computer Science',
                    label: Text('Computer Science'),
                    icon: Icon(Icons.computer),
                  ),
                  ButtonSegment(
                    value: 'Information Technology',
                    label: Text('Information Technology'),
                    icon: Icon(Icons.airplay_outlined),
                  ),
                ],
                selected: selected,
                onSelectionChanged: (Set<String> newSelected) {
                  setState(() {
                    selected = newSelected;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text(
                "Language",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),

              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text("Thai"),
              SizedBox(width: 20), // Adjust spacing as needed
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text("English"),
              SizedBox(width: 20), // Adjust spacing as needed
              Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text("Chinese"),

              const SizedBox(height: 20),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: agreedToTerms,
                  onChanged: (value) {
                    setState(() {
                      agreedToTerms = value!;
                    });
                  },
                ),
                Text('Agree Condition Terms'),
              ],
            ),
              FilledButton.tonal(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Firstpage()),
                  );
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}