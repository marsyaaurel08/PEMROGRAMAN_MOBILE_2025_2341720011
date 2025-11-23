import 'dart:convert';
import '../models/pizza_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter JSON Demo Marsya',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String pizzaString = '';
  List<Pizza> myPizzas = [];
  int appCounter = 0;
  String documentsPath = '';
  String tempPath = '';
  late File myfile;
  String filetext = '';

  final pwdController = TextEditingController();
  String myPass = '';
  final storage = const FlutterSecureStorage();
  final myKey = 'myPass';

  Future<List<Pizza>> readJsonFile() async {
    String myString = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/pizzalist.json');
    List pizzaMapList = jsonDecode(myString);
    List<Pizza> myPizzas = [];
    for (var pizza in pizzaMapList) {
      Pizza myPizza = Pizza.fromJson(pizza);
      myPizzas.add(myPizza);
    }
    String json = convertToJSON(myPizzas);
    print(json);
    return myPizzas;
  }

  Future readAndWritePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    appCounter = prefs.getInt('counter') ?? 0;
    appCounter++;

    await prefs.setInt('counter', appCounter);

    setState(() {
      appCounter = appCounter;
    });
  }

  Future deletePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    setState(() {
      appCounter = 0;
    });
  }

  Future getPaths() async {
    final docDir = await getApplicationDocumentsDirectory();
    final tempDir = await getTemporaryDirectory();
    setState(() {
      documentsPath = docDir.path;
      tempPath = tempDir.path;
    });
  }

  Future<bool> writeFile() async {
    try {
      await myfile.writeAsString('Marsya, Aurelia S, 2341720011');
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> readFile() async {
    try {
      String fileContent = await myfile.readAsString();
      setState(() {
        filetext = fileContent;
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future writeToSecureStorage() async {
    await storage.write(key: myKey, value: pwdController.text);
  }

  Future<String> readFromSecureStorage() async {
    String secret = await storage.read(key: myKey) ?? '';
    return secret;
  }

  @override
  void initState() {
    super.initState();
    getPaths().then((_) {
      myfile = File('$documentsPath/data.txt');
      writeFile();
    });
  }

  String convertToJSON(List<Pizza> pizzas) {
    return jsonEncode(pizzas.map((pizza) => jsonEncode(pizza)).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Path Provider Marsya'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(controller: pwdController),
          ElevatedButton(
            child: const Text('Save Value'),
            onPressed: () {
              writeToSecureStorage();
            },
          ),
          ElevatedButton(
            child: const Text('Read Value'),
            onPressed: () async {
              String value = await readFromSecureStorage();
              setState(() {
                myPass = value;
              });
            },
          ),
          Text(myPass),
        ],
      ),
    );
  }
}
