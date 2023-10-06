import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ButtonColorChangeScreen(),
  )
  );
}
class ButtonColorChangeScreen extends StatefulWidget {
  @override
  _ButtonColorChangeScreenState createState() =>
      _ButtonColorChangeScreenState();
}

class _ButtonColorChangeScreenState extends State<ButtonColorChangeScreen> {
  String selectedSize = '';
  List<bool> buttonSelected = [false, false, false];

  // Function to handle button tap and update state
  void onButtonTap(int index, String size) {
    setState(() {
      for (int i = 0; i < buttonSelected.length; i++) {
        buttonSelected[i] = (i == index);
      }
      selectedSize = size;
    });

    // Show a Snackbar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Selected Size: $selectedSize"),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Color Change'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => onButtonTap(0, 'Small'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  buttonSelected[0] ? Colors.green : Colors.blue,
                ),
              ),
              child: Text('S'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => onButtonTap(1, 'Medium'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  buttonSelected[1] ? Colors.green : Colors.blue,
                ),
              ),
              child: Text('M'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => onButtonTap(2, 'Large'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  buttonSelected[2] ? Colors.green : Colors.blue,
                ),
              ),
              child: Text('L'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => onButtonTap(2, 'Extra Large'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  buttonSelected[2] ? Colors.green : Colors.blue,
                ),
              ),
              child: Text('XL'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => onButtonTap(2, 'Extra Extra Large'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  buttonSelected[2] ? Colors.green : Colors.blue,
                ),
              ),
              child: Text('XXL'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => onButtonTap(2, 'Extra Extra Extra Large'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  buttonSelected[2] ? Colors.green : Colors.blue,
                ),
              ),
              child: Text('XXXL'),
            ),
          ],
        ),
      ),
    );
  }
}
