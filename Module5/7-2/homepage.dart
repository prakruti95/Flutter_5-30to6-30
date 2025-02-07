import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'add.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
        appBar: AppBar(
    title: Text('Crud Operation'.toUpperCase()),
  actions: [
  Padding(
  padding: const EdgeInsets.all(8.0),
  child: ElevatedButton(
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.amber),
  ),
  onPressed: () {
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => const AddPage(),
  ),
  );
  },
  child: const Text('Add'),
    ),
    )
    ],

    )
    );
  }
}



