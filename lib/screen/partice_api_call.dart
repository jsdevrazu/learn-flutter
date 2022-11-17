import 'package:flutter/material.dart';
import 'package:learn/components/app_button.dart';
import 'package:learn/types/post.dart';
import 'package:learn/utils/base_client.dart';

class ApiCallScreen extends StatelessWidget {
  const ApiCallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const FlutterLogo(size: 72),
              AppButton(
                operation: 'GET',
                operationColor: Colors.lightGreen,
                description: 'Fetch users',
                onPressed: () async {
                  await BaseClient().get('/todos/1');
                },
              ),
              AppButton(
                operation: 'POST',
                operationColor: Colors.lightBlue,
                description: 'Add user',
                onPressed: () async {
                  var user = Welcome(
                    userId: 1,
                    id: 1,
                    title: "title",
                    body: "body",
                  );
                  await BaseClient().post('/post', user);
                },
              ),
              AppButton(
                operation: 'PUT',
                operationColor: Colors.orangeAccent,
                description: 'Edit user',
                onPressed: () async {
                  var id = 1;
                  var user = Welcome(
                    userId: 1,
                    id: 1,
                    title: "title",
                    body: "body",
                  );
                  await BaseClient().put('/post/${id}', user);
                },
              ),
              AppButton(
                operation: 'DEL',
                operationColor: Colors.red,
                description: 'Delete user',
                onPressed: () async {
                  var id = 1;
                  await BaseClient().delete('/post/${id}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
