import 'package:flutter/material.dart';
import 'package:mockup_pet_adoption/components/page_header.dart' as header;

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // HEADER
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.19,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: header.PageHeader(),
            ),

            // CORPO ONDE VÃO OS LIST VIEWS
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 242, 242, 242),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                // child: _listTypeAnimal(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget _listTypeAnimal(){
//   return ListView.builder(
//     itemBuilder: (BuildContext (context, index) {
      
//     }));
// }

// class _listTypeAnimal() extends ListTile
// {

// }