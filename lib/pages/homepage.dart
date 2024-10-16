import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var lebar = MediaQuery.of(context).size.width;
  // var tinggi = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    Future<dynamic> showAlertDialog(
        BuildContext context, String judul, String konten) {
      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(judul),
            content: Text(konten),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    }
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Pertemuan 6'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAlertDialog(
              context,
              "Alert Dialog",
              "Ini adalah sebuah alert dialog. Ini juga bagian konten",
            );
          },
          child: Text("Tampilkan Alert Dialog"),
        ),
      ),
      // Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       const mySnackBar = SnackBar(
      //         content: Text("Berhasil membuat SnackBar"),
      //         duration: Duration(seconds: 3),
      //         padding: EdgeInsets.all(10),
      //         backgroundColor: Colors.amberAccent,
      //       );
      //       ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
      //     },
      //     child: Text(
      //       "Tampilkan SnackBar",
      //       style: Theme.of(context).textTheme.bodyLarge,
      //     ),
      //   ),
      // ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text('Headline Large',
      //           style: Theme.of(context).textTheme.headlineLarge),
      //       SizedBox(height: 20),
      //       Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
      //       Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
      //       Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
      //       SizedBox(height: 20),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: Text('Elevated Button'),
      //       ),
      //       SizedBox(height: 20),
      //       OutlinedButton(
      //         onPressed: () {},
      //         child: Text('Outlined Button'),
      //       ),
      //       SizedBox(height: 20),
      //       TextButton(
      //         onPressed: () {},
      //         child: Text('Text Button'),
      //       ),
      //     ],
      //   ),
      // ),
    );
    // GestureDetector(
    //     onTap: () {
    //       setState(() {
    //         selected = !selected;
    //       });
    //     },
    //     child: Center(
    //       child: AnimatedContainer(
    //         width: selected ? 300.0 : 100.0,
    //         height: selected ? 300.0 : 100.0,
    //         color: selected ? Colors.red : Colors.blue,
    //         alignment: selected
    //             ? Alignment.center
    //             : AlignmentDirectional.topCenter,
    //         duration: const Duration(seconds: 2),
    //         curve: Curves.fastOutSlowIn,
    // width: lebar,
    // height: tinggi,
    // color: Colors.amberAccent,
  }
}
