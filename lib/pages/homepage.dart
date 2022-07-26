import 'package:flutter/material.dart';
// import '../change_name_card.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = 'Change Me';
  var url = Uri.parse('https://jsonplaceholder.typicode.com/photos');
  var data;
  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    var res = await http.get(url);
    print(data);
    data = jsonDecode(res.body);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome App'),
        ),
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: data != null
                ? ListView.builder(
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(data[index]['title']),
                          subtitle: Text('ID : ${data[index]['id']}'),
                          leading: Image.network(data[index]['url']),
                        ),
                      );
                    }),
                    itemCount: data.length,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  )));
    // drawer: MyDrawer(),
    floatingActionButton:
    FloatingActionButton(
      onPressed: () {
        myText = _nameController.text;
        setState(() {});
      },
      child: Icon(Icons.refresh),
    );
  }
}
