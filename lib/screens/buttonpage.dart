import 'package:clockapp_dailytask/utils/global.dart';
import 'package:flutter/material.dart';

class Buttonpage extends StatefulWidget {
  const Buttonpage({super.key});

  @override
  State<Buttonpage> createState() => _ButtonpageState();
}

class _ButtonpageState extends State<Buttonpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('img'),
                  ),
                  Text(
                    'Rishi Dadhich',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),
            ),
            ...List.generate(
              drawer.length,
              (index) => drawerContain(index: index),
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Actions',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text('Common Buttons'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text('Elevated'),
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text('Icon'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child : const Text('Elevated'),
                              style: ButtonStyle(
                                backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade400),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FilledButton(
                              onPressed: () {},
                              child: const Text('Filled'),
                            ),
                            FilledButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text('Icon'),
                            ),
                            FilledButton(
                              onPressed: () {},
                              child: const Text('Filled'),
                              style: ButtonStyle(
                                backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade400),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FilledButton.tonal(
                              onPressed: () {},
                              child: const Text('Filled Tonal'),
                            ),
                            FilledButton.tonalIcon(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text('Icon'),
                            ),
                            FilledButton.tonal(
                              onPressed: () {},
                              child: const Text('Filled'),
                              style: ButtonStyle(
                                backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade400),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedButton(
                              onPressed: () {},
                              child: const Text('Outlined'),
                            ),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text('Icon'),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: const Text('Outlined'),
                              style: ButtonStyle(
                                backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade400),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text('Text'),
                            ),
                            TextButton.icon(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              label: const Text('Icon'),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                WidgetStateProperty.all(Colors.grey.shade400),
                              ),
                              child: const Text('Text'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  const Text('Icons Buttons'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined),
                                  onPressed: () {},
                                ),
                                IconButton.filledTonal(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined,color: Colors.purple,),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined),
                                  onPressed: () {},
                                ),
                                IconButton.outlined(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                IconButton(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined),
                                  onPressed: () {},
                                ),
                                IconButton.filledTonal(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined,color: Colors.grey,),
                                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.grey.shade300)),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined,color: Colors.black,),
                                  style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.grey.shade300)),
                                  onPressed: () {},
                                ),
                                IconButton.outlined(
                                  iconSize: 25,
                                  icon: const Icon(Icons.settings_outlined),
                                  onPressed: () {},
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text('Floating Action Buttons'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FloatingActionButton.small(
                                  onPressed: () {},
                                  child: const Icon(Icons.add),
                                ),
                                FloatingActionButton(
                                  onPressed: () {},
                                  child: const Icon(Icons.add),
                                ),
                                FloatingActionButton.extended(
                                  label: const Text('Create'),
                                  icon: const Icon(Icons.add),
                                  onPressed: () {},
                                ),
                                FloatingActionButton.large(
                                  onPressed: () {},
                                  child: const Icon(Icons.add),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile drawerContain({required int index}) {
    return ListTile(
      leading: Icon(
        drawer[index]['icon'],
        color: Colors.black,
      ),
      title: Text(
        drawer[index]['name'],
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
