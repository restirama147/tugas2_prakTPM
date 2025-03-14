import 'package:flutter/material.dart';
import 'package:tugas2/data/cats.dart';

class DetailPage extends StatefulWidget {
  final int index;

  const DetailPage({super.key, required this.index});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 206, 186),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(221, 11, 114, 76),
        title: Text(catList[widget.index].name),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.grey,
          )
          ) 
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Image.network(catList[widget.index].pictureUrl),
            SizedBox(height: 12),
            Text(
              catList[widget.index].name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text("Birthday: ${catList[widget.index].birthday}"),
            Text("Age: ${catList[widget.index].age}"),
            Text("Breed: ${catList[widget.index].breed}"),
            Text("Color: ${catList[widget.index].color}"),
            Text("Sex: ${catList[widget.index].sex}"),
            Text("Vaccines: ${catList[widget.index].vaccines.join(', ')}"),
            Text("Characteristics: ${catList[widget.index].characteristics.join(', ')}"),
            Text("Background: ${catList[widget.index].background}"),
          ],
        ),
      ),
    );
  }
}
  
