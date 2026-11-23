// import 'package:flutter/material.dart';

// class GetxListfavScreen extends StatefulWidget {
//   const GetxListfavScreen({super.key});

//   @override
//   State<GetxListfavScreen> createState() => _GetxListfavScreenState();
// }

// class _GetxListfavScreenState extends State<GetxListfavScreen> {
//   List<String> favList = [ "orange", "apple", "mango", "grapes" ];
//   List<String> selectedFavList = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("List Fav Screen")),
//       body:ListView.builder(itemBuilder: (context, index) {
//         return ListTile(
//           onTap: () => setState(() {
//             if(selectedFavList.contains(favList[index])){
//               selectedFavList.remove(favList[index]);
//             } else {
//               selectedFavList.add(favList[index]);
//             }
//           }),
//           title: Text(favList[index]),
//           trailing: Icon(Icons.favorite_border,color: selectedFavList.contains(favList[index]) ? Colors.red : Colors.grey,),
//         );
//       },
//       itemCount: 4,
//       ),

//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getxexample/counter_screen.dart';

class GetxListfavScreen extends StatefulWidget {
  const GetxListfavScreen({super.key});

  @override
  State<GetxListfavScreen> createState() => _GetxListfavScreenState();
}

class _GetxListfavScreenState extends State<GetxListfavScreen> {
 FavListController favListController = Get.put(FavListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Fav Screen")),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => setState(() {
              favListController.addToFavList(favListController.favList[index]);
            }),
            title: Text(favListController.favList[index]),
            trailing: Icon(
              Icons.favorite_border,
              color: favListController.selectedFavList.contains(favListController.favList[index])
                  ? Colors.red
                  : Colors.grey,
            ),
          );
        },
        itemCount: favListController.favList.length,
      ),
    );
  }
}
