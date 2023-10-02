// import 'package:dailyuipractice/finance-ui/screens/splash_screen.dart';
import 'package:dailyuipractice/finance-ui/screens/splash_screen.dart';
import 'package:dailyuipractice/finance-ui/widgets/bottom_bar_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

// // class TwitterLikeAnimation extends StatefulWidget {
// //   @override
// //   _TwitterLikeAnimationState createState() => _TwitterLikeAnimationState();
// // }

// // class _TwitterLikeAnimationState extends State<TwitterLikeAnimation> {
// //   bool isTweetVisible = false;

// //   void toggleTweetVisibility() {
// //     setState(() {
// //       isTweetVisible = !isTweetVisible;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Twitter-like Animation'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             ElevatedButton(
// //               onPressed: toggleTweetVisibility,
// //               child: Text('Toggle Tweet'),
// //             ),
// //             AnimatedOpacity(
// //               opacity: isTweetVisible ? 1.0 : 0.0,
// //               duration: Duration(milliseconds: 500),
// //               child: AnimatedContainer(
// //                 duration: Duration(milliseconds: 500),
// //                 width: isTweetVisible ? 300 : 0,
// //                 height: isTweetVisible ? 200 : 0,
// //                 decoration: BoxDecoration(
// //                   color: Colors.blue,
// //                   borderRadius: BorderRadius.circular(12),
// //                 ),
// //                 child: Center(
// //                   child: Text(
// //                     'This is a tweet!',
// //                     style: TextStyle(color: Colors.white, fontSize: 16),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TwitterLikeAnimation(),
//     );
//   }
// }

// class TwitterLikeAnimation extends StatefulWidget {
//   @override
//   _TwitterLikeAnimationState createState() => _TwitterLikeAnimationState();
// }

// class _TwitterLikeAnimationState extends State<TwitterLikeAnimation>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _sizeAnimation;
//   late Animation<Color?> _colorAnimation;

//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 500),
//     );

//     _sizeAnimation = Tween<double>(begin: 30, end: 50).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );

//     _colorAnimation =
//         ColorTween(begin: Colors.red, end: Colors.transparent).animate(
//       CurvedAnimation(
//         parent: _controller,
//         curve: Curves.easeInOut,
//       ),
//     );

//     _controller.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   void _likeTweet() {
//     if (_controller.isCompleted) {
//       _controller.reverse();
//     } else {
//       _controller.forward();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Twitter-like Heart Animation'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//               icon: AnimatedBuilder(
//                 animation: _controller,
//                 builder: (context, child) {
//                   return Icon(
//                     Icons.favorite,
//                     size: _sizeAnimation.value,
//                     color: _colorAnimation.value,
//                   );
//                 },
//               ),
//               onPressed: _likeTweet,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
