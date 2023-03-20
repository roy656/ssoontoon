import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool showTitle = true;

  void toggleTitle() {
    setState(() {
      showTitle = !showTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            showTitle ? const MyLargeTitle() : const Text('Nothing to see'),
            IconButton(
              onPressed: toggleTitle,
              icon: const Icon(Icons.remove_red_eye),
            ),
          ],
        )),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    Key? key,
  }) : super(key: key);

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
// initialize, 상태를 초기화 하기 위한 메소드
// initState 메소드는 build 메소드 이전에 호출되어야 한다.
// 오직 한번만 호출되는 메소드.
// 사용시 super.initState(); 가 호출되어야만 한다.
// 특정한 경우 외에는 잘 쓰이진 않는다. (API 업데이트시?)
  @override
  void initState() {
    super.initState();
  }

// 위젯이 위젯트리에서 제거되기 전에 무언가를 취소하는 메소드
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'MyLargeTitle',
      style: TextStyle(
        fontSize:
            50, // context provides location of widget from widget, and access data of upper level of the tree
        color: Theme.of(context).textTheme.titleLarge?.color,
      ),
    );
  }
}
