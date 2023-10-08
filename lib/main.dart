import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonColorChangeDemo(),
    );
  }
}


class ButtonColorChangeDemo extends StatefulWidget {
  @override
  _ButtonColorChangeDemoState createState() => _ButtonColorChangeDemoState();
}

class _ButtonColorChangeDemoState extends State<ButtonColorChangeDemo> {
  Color selectedColor = Colors.blue;
  String selectedSize = 'Small';

  void changeButtonColor(Color newColor, String newSize) {
    setState(() {
      if (selectedColor != newColor) {
        selectedColor = newColor;
        selectedSize = newSize;
      } else {
        selectedColor = Colors.blue; // Reset to the default color
        selectedSize = 'Small';
      }
    });
  }

  void showSnackbar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeButtonColor(Colors.blue, 'S');
                  showSnackbar(context, 'Size: S');
                },
                style: ElevatedButton.styleFrom(
                  primary: selectedColor == Colors.blue
                      ? Colors.amber
                      : Colors.grey,
                ),
                child: Text(
                  'S',
                  style: TextStyle(
                    color: selectedColor == Colors.blue
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeButtonColor(Colors.green, 'M');
                  showSnackbar(context, 'Size: M');
                },
                style: ElevatedButton.styleFrom(
                  primary: selectedColor == Colors.green
                      ? Colors.amber
                      : Colors.grey,
                ),
                child: Text(
                  'M',
                  style: TextStyle(
                    color: selectedColor == Colors.green
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeButtonColor(Colors.red, 'L');
                  showSnackbar(context, 'Size: L');
                },
                style: ElevatedButton.styleFrom(
                  primary:
                  selectedColor == Colors.red ? Colors.amber : Colors.grey,
                ),
                child: Text(
                  'L',
                  style: TextStyle(
                    color: selectedColor == Colors.red
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeButtonColor(Colors.purple, 'XL');
                  showSnackbar(context, 'Size: XL');
                },
                style: ElevatedButton.styleFrom(
                  primary: selectedColor == Colors.purple
                      ? Colors.amber
                      : Colors.grey,
                ),
                child: Text(
                  'XL',
                  style: TextStyle(
                    color: selectedColor == Colors.red
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeButtonColor(Colors.white, 'XXL');
                  showSnackbar(context, 'Size: XXL');
                },
                style: ElevatedButton.styleFrom(
                  primary: selectedColor == Colors.white
                      ? Colors.amber
                      : Colors.grey,
                ),
                child: Text(
                  'XXL',
                  style: TextStyle(
                    color: selectedColor == Colors.red
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  changeButtonColor(Colors.brown, 'XXXL');
                  showSnackbar(context, 'Size: XXXL');
                },
                style: ElevatedButton.styleFrom(
                  primary: selectedColor == Colors.brown
                      ? Colors.amber
                      : Colors.grey,
                ),
                child: Text(
                  'XXXL',
                  style: TextStyle(
                    color: selectedColor == Colors.red
                        ? Colors.white
                        : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}