import 'package:flutter/material.dart';

void main() => runApp(const ScrollablePage());

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    List<String> names = ['Name 1', 'Name 2', 'Name 3', 'Name 4', 'Name 5'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        title: const Text(
          'ListView Demo',
        ),
      ),
      body: Center(
        child: FractionallySizedBox(
          heightFactor: 0.4,
          widthFactor: 0.6,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, _) {
              return const VerticalDivider(
                width: 5,
                color: Colors.pink,
                thickness: 3,
              );
            },
            itemCount: names.length,
            itemBuilder: (context, index) {
              var containers = names
                  .map((names) => Container(
                      height: 100,
                      width: 100,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      color: Colors.indigo,
                      child: Text(
                        names,
                        style: const TextStyle(color: Colors.white70),
                      )))
                  .toList();

              return containers[index];
            },
          ),
        ),
      ),
    );
  }
}
