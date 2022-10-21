import 'package:flutter/material.dart';

void main() {
  runApp(const LineNumShower(nums: [1, 2, 3, 4]));
  // runApp(Matrix());
}

class MatrixShower extends StatelessWidget {
  final List<num> list16;

  const MatrixShower({super.key, required this.list16});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: buildLines(),
    );
  }

  List<Widget> buildLines() {
    List<Widget> result = [];
    final int count = list16.length % 4;
    for (int i = 0; i < count; i++) {
      List<num> nums = [i * 4 + 0, i * 4 + 1, i * 4 + 2, i * 4 + 3];
      result.add(LineNumShower(nums: nums));
    }
    return result;
  }
}

class Matrix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        LineNumShower(nums: [1, 2, 3, 4]),
        LineNumShower(nums: [5, 6, 7, 8]),
        LineNumShower(nums: [9, 10, 11, 12]),
        LineNumShower(nums: [13, 14, 15, 16])
      ],
    );
  }
}

class LineNumShower extends StatelessWidget {
  final List<num> nums;

  const LineNumShower({super.key, required this.nums});

  @override
  Widget build(BuildContext context) {
    return const Text("aaa");
    // return Row(
    //   mainAxisSize: MainAxisSize.min,
    //   children: const [Text('a')],
    // );
  }

  Widget _buildItemByIndex(int index) {
    bool last = index == nums.length - 1;
    String endFix = last ? "" : ",";
    return Text(nums[index].toString() + endFix);
  }
}