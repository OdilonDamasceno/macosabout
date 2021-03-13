import 'dart:io' as io;

import 'dart:math';

class DisplayController {
  String iches;
  String gpu;
  String resolution;
  List<String> _sizes;
  DisplayController.init() {
    this.gpu = io.Process.runSync("lspci", [])
        .stdout
        .toString()
        .split("\n")
        .where((element) => element.contains("VGA"))
        .first
        .split(":")
        .last
        .split("(")
        .first;
    this.resolution = io.Process.runSync("xrandr", ["--current"])
        .stdout
        .toString()
        .split("\n")
        .first
        .split(",")[1]
        .replaceFirst("current", "")
        .trim();
    this._sizes = io.Process.runSync(
      "xrandr",
      ["--current"],
    )
        .stdout
        .toString()
        .split("\n")[1]
        .split(")")
        .last
        .replaceAll("mm", '')
        .split(" x ");

    this.iches = (sqrt(
              (int.tryParse(_sizes[0]) * int.tryParse(_sizes[0])) +
                  (int.tryParse(_sizes[1]) * int.tryParse(_sizes[1])),
            ) /
            25.4)
        .toStringAsPrecision(3)
        .replaceAll(".", ',');
  }
}
