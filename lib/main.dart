import 'package:flutter/material.dart';
import 'package:inmakes/pages/home.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


// 34 making hhtp request
// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<Map<String, dynamic>> _post = [];
//   bool _isLoading = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: _isLoading
//           ? Center(
//               child: CircularProgressIndicator(),
//             )
//           : _post.isEmpty
//               ? Center(
//                   child: Text('No Data'),
//                 )
//               : ListView.builder(
//                   itemCount: _post.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     final post = _post[index];
//                     return Card(
//                       margin: EdgeInsets.all(8.0),
//                       child: ListTile(
//                         title: Text(post['title'] as String),
//                         subtitle: Text(post['body'] as String),
//                       ),
//                     );
//                   }),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _isLoading = true;

//           });
//           fetchData();
//         },
//         child: Icon(Icons.refresh),
//       ),
//     );
//   }

//   Future<void> fetchData() async {
//     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     if(response.statusCode == 200){
//       final List<dynamic> jsonData = json.decode(response.body) as List<dynamic>;
//       setState(() {
//         _post = jsonData.cast<Map<String, dynamic>>();
//         _isLoading = false;
//       });
//     } else {
//       _post = [];
//       _isLoading = false;
//     }
//   }
// }


//33 controller and HTTP
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:inmakes/controller/user_controller.dart';
// import 'package:inmakes/model/user.dart';


// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Userlist',
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: GetX<UserController>(
//             init: UserController(),
//             builder: (controller) {
//               if (controller.isLoading.value) {
//                 return CircularProgressIndicator();
//               }
//               return ListView.builder(
//                   itemCount: controller.users.length,
//                   itemBuilder: (context, index) {
//                     User user = controller.users[index];
//                     return ListTile(
//                       title: Text(user.name),
//                       subtitle: Text(user.email),
//                     );
//                   });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }



// //manage state 14th video
//bloc 30
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:inmakes/bloc/counter_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: BlocProvider(
//           create: (context) => CounterBloc(),
//           child: MyHomePage(),
//         ));
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final counterBloc = BlocProvider.of<CounterBloc>(context);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter'),
//       ),
//       body: BlocBuilder<CounterBloc, int>(builder: (context, count) {
//         return Center(
//           child: Text('$count'),
//         );
//       }),

//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: (){
//           counterBloc.add(CounterIncrement());
//       }),
//       FloatingActionButton(
//         child: Icon(Icons.delete),
//         onPressed: (){
//             counterBloc.add(CounterDecrement());
//       }),
//       ],),
//     );
//   }
// }




// class CounterApp extends StatefulWidget {
//   const CounterApp({super.key});

//   @override
//   _CounterAppState createState() => _CounterAppState();
// }

// class _CounterAppState extends State<CounterApp> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter App'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text('Counter : '),
//             Text(
//               '$_counter',
//               style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           _incrementCounter();
//         },
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
