import 'package:flutter/material.dart';
import 'package:tugas2/data/cats.dart';
import 'package:tugas2/pages/detail_page.dart';

class CatListPage extends StatelessWidget {
  
  const CatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 148, 206, 186),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(221, 11, 114, 76),
          centerTitle: true,
          title: Text("Home Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => _listKucing(context, index),
            itemCount: catList.length,
          ),
        ));
  }

  Widget _listKucing(context, index) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => DetailPage(index: index)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          //border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(221, 11, 114, 76)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Image.network(
                catList[index].pictureUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5),
            Text(
              catList[index].name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Text(
              catList[index].age.toString(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Text(
              catList[index].sex,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            Text(
              catList[index].breed,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
