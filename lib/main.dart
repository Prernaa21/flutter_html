import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_html/flutter_html.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new MyHomePage(title: 'flutter_html Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

const htmlData = r"""
<html>
  <head>
    <title>The title of the webpage would go here.</title>
  </head>
  <body>
    <h1>This is the page's title that shows up to people</h1>
      <p>Content</p>
      <p>More content</p>
      <p>Even more content</p>
    <h2>Section break</h2>
      <p><img src="https://www.elegantthemes.com/blog/wp-content/uploads/2019/04/tagline-featured-image.jpg"></p>
      <p><a href="https://elegantthemes.com/divi">A link to our Divi page</a></p>
  </body>
</html>
""";
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('flutter_html '),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Html(
          data: htmlData,
        ),
      ),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter_html/flutter_html.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new CupertinoApp(
//       title: 'Flutter Demo',
//       theme: new CupertinoThemeData(
//         scaffoldBackgroundColor: Color.fromRGBO(255, 255, 255, 0.2),
//       ),
//       home: new MyHomePage(title: 'flutter_html Example'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => new _MyHomePageState();
// }

// const htmlData = r"""
// <html>
//   <head>
//     <title>The title of the webpage would go here.</title>
//   </head>
//   <body>
//     <h1>This is the page's title that shows up to people</h1>
//       <p>Content</p>
//       <p>More content</p>
//       <p>Even more content</p>
//     <h2>Section break</h2>
//       <p><img src="https://www.elegantthemes.com/blog/wp-content/uploads/2019/04/tagline-featured-image.jpg"></p>
//       <p><a href="https://elegantthemes.com/divi">A link to our Divi page</a></p>
//   </body>
// </html>
// """;
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return new CupertinoPageScaffold(
//      navigationBar: const CupertinoNavigationBar(
//        middle: Text('flutter_html'),
//      ),
//      child: Html(
//           data: htmlData,
//         ),
//     );
//   }
// }

