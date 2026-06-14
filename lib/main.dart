import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> t = [
    "flutter",
    "firebase",
    "provider",
    "hive",
    "shared preferences",
    "authentication",
    "REST api",
    "state management",
    "beautiful ui",
    "internship",
    "OOPs"
        "app develeopment",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(238, 96, 177, 218),
        title: Text("Technologies", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: t.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 100,
                  child: Card(
                    elevation: 5,
                    color: const Color.fromARGB(255, 178, 203, 217),

                    child: ListTile(
                      title: Text(t[index]),
                      leading: Text("${index + 1}"),
                      trailing: Icon(Icons.forward),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("${t[index]} selected")),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
