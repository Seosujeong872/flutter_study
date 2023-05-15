import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async{
  await Supabase.initialize(
    url: "https://qieokiesrzgdgxqnixsc.supabase.co",
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFpZW9raWVzcnpnZGd4cW5peHNjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODA1NzIyNjYsImV4cCI6MTk5NjE0ODI2Nn0.SJPH7VFMhyt7020hbzpWhk9t6nIqGm8zaycYeSVuOcQ",
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Supabase.instance.client.from("todo").select().then((value) {
    //   print(value);
    // });
    Supabase.instance.client.from("todo").stream(primaryKey: ["idx"]).listen((event) {
      print(event);
    });
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: StreamBuilder<List<Map<String, dynamic>>>(
                stream: Supabase.instance.client.from("todo").stream(primaryKey: ["idx"]),
                builder: (context, snapshot) {
                  return ListView(
                    children: snapshot.data?.map((e) => Text(e["content"])).toList() ?? [],
                  );
                }
            )),
      ),
    );
  }
}