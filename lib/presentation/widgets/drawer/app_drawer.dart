import 'package:ditonton/presentation/pages/movies/home_movie_page.dart';
import 'package:ditonton/presentation/pages/tv_series/home_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series/watchlist_tv_series_page.dart';
import 'package:flutter/material.dart';

import '../../pages/about_page.dart';
import '../../pages/movies/watchlist_movies_page.dart';

class AppDrawer extends StatelessWidget {
  final String pageRouteName;
  const AppDrawer({required this.pageRouteName, super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/circle-g.png'),
              backgroundColor: Colors.grey.shade900,
            ),
            accountName: Text('Ditonton'),
            accountEmail: Text('ditonton@dicoding.com'),
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
            ),
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('Movies'),
            onTap: () {
              if(pageRouteName == HomeMoviePage.ROUTE_NAME){
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, HomeMoviePage.ROUTE_NAME);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text('Tv Series'),
            onTap: () {
              if(pageRouteName == HomeTvSeriesPage.ROUTE_NAME){
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, HomeTvSeriesPage.ROUTE_NAME);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.save_alt),
            title: Text('Watchlist Movies'),
            onTap: () {
              if(pageRouteName == WatchlistMoviesPage.ROUTE_NAME){
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, WatchlistMoviesPage.ROUTE_NAME);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.save_alt),
            title: Text('Watchlist TV Series'),
            onTap: () {
              if(pageRouteName == WatchlistTvSeriesPage.ROUTE_NAME){
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, WatchlistTvSeriesPage.ROUTE_NAME);
              }
            },
          ),
          ListTile(
            onTap: () {
              if(pageRouteName == AboutPage.ROUTE_NAME){
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, AboutPage.ROUTE_NAME);
              }
            },
            leading: Icon(Icons.info_outline),
            title: Text('About'),
          ),
        ],
      ),
    );
  }
}
