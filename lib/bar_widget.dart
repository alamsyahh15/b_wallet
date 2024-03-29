import 'dart:math' as math;

import 'package:flutter/material.dart';

class BarWidget extends StatefulWidget {
  final double valueBar;
  final Color? barColor;
  const BarWidget({Key? key, required this.valueBar, this.barColor})
      : assert(valueBar <= 1),
        super(key: key);

  @override
  State<BarWidget> createState() => _BarWidgetState();
}

class _BarWidgetState extends State<BarWidget> {
  bool initial = true;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 300), () {
      initial = false;
      setState(() {});
    });

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final heightBar = heightScreen * 0.3;

    return InkWell(
      onTap: () {
        setState(() => initial = true);
        Future.delayed(const Duration(milliseconds: 300), () {
          initial = false;
          setState(() {});
        });
      },
      child: SizedBox(
        height: heightBar,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedContainer(
              width: 23,
              height: heightBar,
              decoration: BoxDecoration(
                color: widget.barColor?.withOpacity(0.3) ??
                    const Color(0xFF1D8AEF).withOpacity(0.3),
                borderRadius: BorderRadius.circular(100),
              ),
              duration: const Duration(milliseconds: 500),
            ),
            Positioned(
              bottom: 0,
              child: AnimatedContainer(
                width: 23,
                height: initial ? 0 : heightBar * widget.valueBar,
                decoration: BoxDecoration(
                  color: widget.barColor?.withOpacity(widget.valueBar) ??
                      const Color(0xFF1D8AEF).withOpacity(widget.valueBar),
                  borderRadius: BorderRadius.circular(100),
                ),
                duration: const Duration(milliseconds: 800),
                curve: Curves.bounceOut,
              ),
            ),
            Visibility(
              visible: initial,
              child: Transform.rotate(
                angle: -math.pi / 2,
                child: Text(
                  "${(widget.valueBar * 100).toStringAsFixed(0)}%",
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
