import 'package:flutter/material.dart';
import 'package:flutter_demo/timer/01/home_page/button_tools.dart';
import 'package:flutter_demo/timer/01/home_page/stopwatch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Duration _duration = Duration.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: buildActions(),
      ),
      body: Column(
        children: [
          buildStopwatchPanel(),
          buildRecordPanel(),
          buildTools(StopWatchType.running)
        ],
      ),
    );
  }

  List<Widget> buildActions() {
    return [
      PopupMenuButton<String>(
          itemBuilder: buildItem,
          onSelected: _onSelectItem,
          icon: const Icon(Icons.more_vert_outlined, color: Color(0xff262626)),
          position: PopupMenuPosition.under,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))))
    ];
  }

  List<PopupMenuEntry<String>> buildItem(BuildContext context) {
    return const [
      PopupMenuItem(value: '设置', child: Center(child: Text('设置'))),
      PopupMenuItem(value: '关于', child: Center(child: Text('关于')))
    ];
  }

  void _onSelectItem(String value) {
    print(value);
  }

  Widget buildStopwatchPanel() {
    double radius = MediaQuery.of(context).size.shortestSide / 2 * 0.75;
    return StopWatchPainter(radius: radius, duration: _duration);
  }

  Widget buildRecordPanel() {
    return Expanded(child: Container(color: Colors.red));
  }

  StopWatchType _type = StopWatchType.none;

  Widget buildTools(StopWatchType state) {
    return ButtonTools(
      state: _type,
      onRecoder: onRecoder,
      onReset: onReset,
      toggle: toggle,
    );
  }
}

void onReset() {}

void onRecoder() {}

void toggle() {}
