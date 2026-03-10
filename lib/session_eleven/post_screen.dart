import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_eleven/post.dart';
import 'package:http/http.dart' as http;

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  List<Post> postsList = [];

  bool isLoading = false;

  Future<void> getPosts() async {
  setState(() => isLoading = true);

  try {
    final response = await http.get(
     Uri.parse("https://dummyjson.com/posts")
,
    );

    debugPrint("Status Code: ${response.statusCode}"); // Status dekho
    debugPrint("Body preview: ${response.body.substring(0, 100)}"); // Pehle 100 chars dekho

   if (response.statusCode == 200) {
  Map<String, dynamic> jsonData = jsonDecode(response.body);
  
  // ✅ "posts" key se list nikalo
  List<dynamic> jsonList = jsonData["posts"];
  
  setState(() {
    postsList = jsonList.map((item) => Post.fromJson(item)).toList();
  });
} else {
      debugPrint("API Error: ${response.statusCode}");
    }
  } catch (e) {
    debugPrint("Error: $e");
  } finally {
    setState(() => isLoading = false);
  }
}

//   Future<void> getPosts() async {
//     setState(() {
//       isLoading = true;
//     });
// try {
//     final response = await http.get(
//       Uri.parse("https://jsonplaceholder.typicode.com/posts"),
//     );

//     List<dynamic> jsonList = jsonDecode(response.body);

//     List<Post> posts = [];

//     for (var item in jsonList) {
//       posts.add(Post.fromJson(item));
//     }

//     setState(() {
//       postsList = posts;
//       isLoading = false;
//     });}
//    catch (e) {
//       debugPrint("Error: $e"); // Console mein error dekho
//     } finally {
//       setState(() {
//         isLoading = false; // ✅ Har case mein loading band hogi
//       });
//     }
//   }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Post Screen")),
      body: isLoading
          ? Center(child: CircularProgressIndicator(color: Colors.amber))
          : ListView.builder(
              itemCount: postsList.length,
              itemBuilder: (context, index) {
                Post    post  = postsList[index];// aik aik index aa rahee hoo gii 
                return Card(
                  child: Column(
                    children: [
                      Text(post.title ?? "title"),
                      SizedBox(height: 6,),
                      Text(post.body??"")
                    ],
                  ),
                );
              },
            ),
    );
  }
}
