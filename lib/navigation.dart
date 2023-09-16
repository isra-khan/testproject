import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}





































// FutureBuilder(
//         future: fetchPosts(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('error $snapshot.hasError');
//           } else {
//             List<Post> post = snapshot.data!;
//             return ListView.builder(
//                 itemCount: post.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     leading: Text(snapshot.data![index].title),
//                     subtitle: Text(snapshot.data![index].body),
//                   );
//                 });
//           }
//         },
//       )