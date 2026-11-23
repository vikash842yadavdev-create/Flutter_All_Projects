import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject001/app/data/models/api_postmodel.dart';

class DioapiScreen extends StatefulWidget {
  const DioapiScreen({super.key});

  @override
  State<DioapiScreen> createState() => _DioapiScreenState();
}

class _DioapiScreenState extends State<DioapiScreen> {
  String url = 'https://jsonplaceholder.typicode.com/posts';
  bool loading = false;
  List<ApiPostmodel> posts = [];
  String result = '';
  int statusCode = -1;
  var dio = Dio();

  void postData() async {
    setState(() {
      loading = true;
    });

    try {
      final response = await dio.post(
        url,
        data: {
          'title': 'This is new Post',
          'body': 'This is first body',
          'userId': 101,
        },
      );
      result = response.data.toString();
      statusCode = response.statusCode!;
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
      final response = await dio.put(
        '$url/1',
        data: {
          'title': 'This is new Post Updated',
          'body': 'This is first body updated',
          'userId': 101,
        },
      );
      result = response.data.toString();
      statusCode = response.statusCode!;
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
      final response = await dio.patch(
        '$url/1',
        data: {
          'title': 'This is new Post Updated by patch',
          'body': 'This is first body updated',
          'userId': 101,
        },
      );
      result = response.data.toString();
      statusCode = response.statusCode!;
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
      final response = await dio.delete('$url/1');
      result = response.data.toString();
      statusCode = response.statusCode!;
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
      final response = await dio.get(url);
      final data = response.data;
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
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ElevatedButton(onPressed: getData, child: Text('Get')),
                        ElevatedButton(
                          onPressed: postData,
                          child: Text('Post'),
                        ),
                        ElevatedButton(onPressed: putData, child: Text('Put')),
                        ElevatedButton(
                          onPressed: patchData,
                          child: Text('Patch'),
                        ),
                        ElevatedButton(
                          onPressed: deleteData,
                          child: Text('Delete'),
                        ),
                      ],
                    ),
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
