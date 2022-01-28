import 'package:flutter/material.dart';

class OutputA extends StatefulWidget {

  String _textPassedFromMain;
  OutputA(this._textPassedFromMain);

  @override
  _OutputAState createState() => _OutputAState();
}

class _OutputAState extends State<OutputA>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("青文字"),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: FadeTransition(
            opacity: _animation,
            child: Text(
              "${widget._textPassedFromMain}",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

