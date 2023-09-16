import 'package:flutter/material.dart';

class TestState extends StatefulWidget {
  @override
  State<TestState> createState() => _TestStateState();
}

class _TestStateState extends State<TestState> {
  int counter = 0;
  TextEditingController _controller = new TextEditingController();
  increment() {
    counter++; // counter=counter+1
    print(counter);
  }

  @override
  void initState() {
    print("Hello! I am initialized");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Text(
        counter.toString(),
        style: TextStyle(color: Colors.blue, fontSize: 50),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increment();
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}


//  FutureBuilder(
//           future: fetchPosts(),
//           builder: (context, snapshot) {
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator();
//             }
//             if (snapshot.hasError) {
//               return Text("error ${snapshot.hasError}");
//             } else {
//               List<Post> posts = snapshot.data!;
//               return ListView.builder(
//                   itemCount: posts.length,
//                   itemBuilder: ((context, index) {
//                     return ListTile(
//                       leading: Text(posts[index].id.toString()),
//                       title: Text(posts[index].body.toString()),
//                     );
//                   }));
//             }
//           }),