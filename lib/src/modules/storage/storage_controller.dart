import 'dart:io' as io;

class StorageController {
  String used;
  String size;
  String aval;
  String mountPoint;
  StorageController.init() {
    io.Process.runSync(
      "df",
      ["/", "-h", "--output=target,size,used,pcent,source", "-H"],
    ).stdout.toString().split("\n").forEach((line) {
      if (line.contains(RegExp(r'^/\s'))) {
        List _lineList = line.split(" ");
        _lineList.removeWhere((element) => element.isEmpty);
        this.size = _lineList[1].toString().replaceAll("G", "");
        this.used = _lineList[2].toString().replaceAll("G", "");
        this.aval = _lineList[3].toString().replaceAll("%", "");
        this.mountPoint = _lineList[4];
      }
    });
  }
}
