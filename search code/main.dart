import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'photo.dart';  // Import the Photo class from photo.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Search ListView',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Photo> _photos = [];
  List<Photo> _filteredPhotos = [];

  // Fetch photos from the API
  Future<void> fetchPhotos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      setState(() {
        _photos = data.map((json) => Photo.fromJson(json)).toList();
        _filteredPhotos = _photos;
      });
    } else {
      throw Exception('Failed to load photos');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchPhotos();  // Fetch photos when the app starts
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Search ListView"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: PhotoSearchDelegate(_photos));
            },
          ),
        ],
      ),
      body: _filteredPhotos.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: _filteredPhotos.length,
        itemBuilder: (context, index) {
          final photo = _filteredPhotos[index];
          return ListTile(
            leading: Image.network(photo.url),
            title: Text(photo.title),
          );
        },
      ),
    );
  }
}

class PhotoSearchDelegate extends SearchDelegate {
  final List<Photo> photos;

  PhotoSearchDelegate(this.photos);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';  // Clear the search query
          showResults(context);  // Refresh the results
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);  // Close the search
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = photos
        .where((photo) => photo.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final photo = results[index];
        return ListTile(
          leading: Image.network(photo.url),
          title: Text(photo.title),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = photos
        .where((photo) => photo.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final photo = suggestions[index];
        return ListTile(
          leading: Image.network(photo.url),
          title: Text(photo.title),
        );
      },
    );
  }
}
