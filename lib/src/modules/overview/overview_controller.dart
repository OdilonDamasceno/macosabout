import 'dart:io' as io;

import 'package:system_info/system_info.dart';

class OverviewController {
  String cpu;
  String gpu;
  String memory =
      (SysInfo.getTotalPhysicalMemory() / 1000000000).floor().toString();
  String kernelName = SysInfo.kernelName;
  String os = SysInfo.operatingSystemName;
  String version = SysInfo.kernelVersion;
  String chassisVersion;
  String boardName;
  String startupDisk;
  OverviewController.init() {
    this.cpu = io.Process.runSync(
      "grep",
      ["^model name", "/proc/cpuinfo", "-m", "1"],
    ).stdout.toString().split(":").last.replaceAll("\n", "");
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
    this.chassisVersion = io.Process.runSync(
      "cat",
      ["/sys/devices/virtual/dmi/id/chassis_version"],
    ).stdout.toString().replaceAll('\n', '');
    this.boardName = io.Process.runSync(
      "cat",
      ["/sys/devices/virtual/dmi/id/board_name"],
    ).stdout.toString().replaceAll('\n', '');
    io.Process.runSync(
      "df",
      ["/", "-h", "--output=target,source", "-H"],
    ).stdout.toString().split("\n").forEach((line) {
      if (line.contains(RegExp(r'^/\s'))) {
        List _lineList = line.split(" ");
        _lineList.removeWhere((element) => element.isEmpty);
        this.startupDisk = _lineList[1];
      }
    });
  }
}
