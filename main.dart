import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab 5 Widgets',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
        appBar: AppBar(title: Text("Lab 5 Practice")),
        body: WidgetExamples(),
      ),
    );
  }
}

class WidgetExamples extends StatelessWidget {
  const WidgetExamples({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// ---------------------------
          /// 1. Container Widget Tasks
          /// ---------------------------
          Card(
            child: Column(
              children: [
                const Text("1. Container Widget Tasks",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.redAccent,
                  height: 150,
                  width: 100,
                  child: const Text('Hello!'),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.redAccent,
                  height: 150,
                  width: 100,
                  child: const Icon(Icons.home),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.home),
                ),
                Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(16.0),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.home),
                ),
              ],
            ),
          ),

          /// ---------------------------
          /// 2. Column & Row Tasks
          /// ---------------------------
          Card(
            child: Column(
              children: [
                const Text("2. Column & Row Tasks",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Column(
                  children: const [
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                    Icon(Icons.star, size: 50),
                  ],
                ),
              ],
            ),
          ),

          /// ---------------------------
          /// 3. TextField Tasks
          /// ---------------------------
          Card(
            child: Column(
              children: [
                const Text("3. TextField Tasks",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your password",
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your password",
                  ),
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your password",
                    icon: Icon(Icons.lock),
                  ),
                ),
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your name",
                    icon: Icon(Icons.person),
                  ),
                ),
              ],
            ),
          ),

          /// ---------------------------
          /// 4. Advanced Layout Tasks
          /// ---------------------------
          Card(
            child: Column(
              children: [
                const Text("4. Advanced Layout",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Expanded(child: Container(height: 100, color: Colors.red)),
                    Expanded(
                        child: Container(height: 100, color: Colors.green)),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(height: 100, color: Colors.red),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(height: 100, color: Colors.green),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(color: Colors.red),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(color: Colors.green),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(width: 100, height: 100, color: Colors.red),
                    const Spacer(),
                    Container(width: 100, height: 100, color: Colors.green),
                  ],
                ),
              ],
            ),
          ),

          /// ---------------------------
          /// 5. Widget Tree Challenges
          /// ---------------------------
          Card(
            child: Column(
              children: [
                const Text("5. Challenge 1: Profile Card",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(child: Text('A')),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("User Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text("@username",
                                    style: TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text("A short bio about the user goes here..."),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Follow")),
                          ElevatedButton(
                              onPressed: () {}, child: const Text("Message")),
                        ],
                      ),
                    ],
                  ),
                ),
                const Text("5. Challenge 2: Product Item",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network("https://via.placeholder.com/100"),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Product Title",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            Text("A brief description of the item..."),
                            Text("\$99.99",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
