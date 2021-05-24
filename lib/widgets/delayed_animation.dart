import 'dart:async';

import 'package:flutter/material.dart';

class MyDelayedAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  final bool noSlide;

  MyDelayedAnimation({@required this.child, this.delay, this.noSlide:false});

  @override
  _MyDelayedAnimationState createState() => _MyDelayedAnimationState();
}

class _MyDelayedAnimationState extends State<MyDelayedAnimation>
    with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 800));
    final curve =
        CurvedAnimation(curve: Curves.decelerate, parent: _controller);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);
    try {
      if (widget.delay == null) {
        _controller.forward();
      } else {
        
        Timer(
          Duration(milliseconds: widget.delay),
          () {       
            if (mounted) _controller.forward();
          }
        );
      }
    } catch (err) {
      print(err.toString());
    }
  }

  @override
  void dispose() {
    
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build (BuildContext context) {
    
    return FadeTransition(
      child: widget.noSlide ? widget.child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
      opacity: _controller,
    );
  }
}
