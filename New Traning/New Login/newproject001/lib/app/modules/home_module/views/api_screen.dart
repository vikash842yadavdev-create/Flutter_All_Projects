import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:newproject001/app/data/models/api_postmodel.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  bool loading = false;
  List<ApiPostmodel> posts = [];
  String result = '';
  int statusCode = -1;

  void postData() async {
    setState(() {
      loading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode({
          'title': 'This is new Post',
          'body': 'This is first body',
          'userId': 101,
        }),
        headers: {'Content-type': 'application/json; charset=UTF-8'},
      );
      result = response.body;
      statusCode = response.statusCode;
    } catch (e) {
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void putData() async {
    setState(() {
      loading = true;
    });

    try {
      final response = await http.put(
        Uri.parse('$url/1'),
        body: jsonEncode({
          'id': 1,
          'title': 'This is new Post update',
          'body': 'This is first body update',
          'userId': 101,
        }),
        headers: {'Content-type': 'application/json; charset=UTF-8'},
      );
      result = response.body;
      statusCode = response.statusCode;
    } catch (e) {
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void patchData() async {
    setState(() {
      loading = true;
    });

    try {
      final response = await http.patch(
        Uri.parse('$url/2'),
        body: jsonEncode({'title': 'This is second title updated'}),
        headers: {'Content-type': 'application/json; charset=UTF-8'},
      );
      result = response.body;
      statusCode = response.statusCode;
    } catch (e) {
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void deleteData() async {
    setState(() {
      loading = true;
    });

    try {
      final response = await http.delete(Uri.parse('$url/2'));
      result = response.body;
      statusCode = response.statusCode;
    } catch (e) {
      result = e.toString();
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  void getData() async {
    posts.clear();
    setState(() {
      loading = true;
    });
    try {
      final response = await http.get(Uri.parse(url));
      // print('Status Code ========> ${response.statusCode}');
      // print('Data===========> ${response.body}');
      final data = jsonDecode(response.body);
      for (var post in data) {
        ApiPostmodel newPost = ApiPostmodel(
          post['id'],
          post['userId'],
          post['title'],
          post['body'],
        );
        posts.add(newPost);
      }
    } catch (e) {
      print(e);
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: loading
            ? CircularProgressIndicator()
            : Column(
                children: [
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: getData,
                        child: Container(
                          height: 38.h,
                          width: 64.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(child: Text('Get')),
                        ),
                      ),
                      InkWell(
                        onTap: postData,
                        child: Container(
                          height: 38.h,
                          width: 64.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(child: Text('Post')),
                        ),
                      ),
                      InkWell(
                        onTap: putData,
                        child: Container(
                          height: 38.h,
                          width: 64.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(child: Text('Put')),
                        ),
                      ),
                      InkWell(
                        onTap: patchData,
                        child: Container(
                          height: 38.h,
                          width: 64.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(child: Text('Patch')),
                        ),
                      ),
                      InkWell(
                        onTap: deleteData,
                        child: Container(
                          height: 38.h,
                          width: 52.h,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade300,
                            ),
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Center(child: Text('Delete')),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text('Response'),
                    subtitle: Text(result),
                    trailing: loading
                        ? CircularProgressIndicator()
                        : Text('StatusCode : $statusCode'),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        for (var post in posts)
                          ListTile(
                            title: Text(post.title),
                            subtitle: Text(post.body),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
