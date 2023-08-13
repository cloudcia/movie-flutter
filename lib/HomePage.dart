import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:movielist/movie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MovieList>? myMovie = [];

  @override
  void initState() {
    super.initState();

    MovieList herPrivateLife = new MovieList("Her Private Life", "2019", "8/10", "assets/herpriv.png");
    MovieList wwwsk = new MovieList("What's Wrong With Secretary Kim", "2018", "9/10", "assets/wwwsk.png");
    MovieList okja = new MovieList("Okja", "2017", "8/10", "assets/okja.png");
    MovieList extraordinaryYou = new MovieList("Extraordinary You", "2019", "9/10", "assets/extraordinary.png");
    MovieList lawSchool = new MovieList("Law School", "2021", "9/10", "assets/lawsch.png");

    myMovie?.add(herPrivateLife);
    myMovie?.add(wwwsk);
    myMovie?.add(okja);
    myMovie?.add(extraordinaryYou);
    myMovie?.add(lawSchool);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: myMovie?.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
                child: ListTile(
                  leading: Image.asset(
                    myMovie![index].imagePath,
                    width: 100,
                    height: 150,
                      fit: BoxFit.cover
                  ),
                  title: Text(
                    myMovie![index].title,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Release Year: ${myMovie![index].releaseDate}"),
                      Text("Rating: ${myMovie![index].rating}"),
                    ],
                  ),
                  onTap: () {
                    // Add your onTap logic here e.g., navigate to movie details
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}