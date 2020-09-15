import 'package:flutter/material.dart';
import 'package:wallpaper/models/wallpaper_model.dart';

Widget titleName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        "Wallpaper",
        style: TextStyle(color: Colors.black87, fontFamily: 'Overpass'),
      ),
      Text(
        "Hub",
        style: TextStyle(color: Colors.blue, fontFamily: 'Overpass'),
      )
    ],
  );
}

Widget wallpapersList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 10.0,
      crossAxisSpacing: 10.0,
      children: wallpapers.map((wallpaper) {
        return GridTile(
          child: Container(
            // color: Colors.blue,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: Image.network(
                wallpaper.src.portrait,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
