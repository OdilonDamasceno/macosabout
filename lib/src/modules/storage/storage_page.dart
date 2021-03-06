import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/storage/storage_controller.dart';
import 'package:macosabout/src/widgets/button_mac.dart';

class StoragePage extends StatefulWidget {
  @override
  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  final StorageController _controller = StorageController.init();

  @override
  void initState() {
    DesktopWindow.setWindowSize(Size(590, 250));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 20,
                child: Column(
                  children: [
                    Image.asset("assets/images/disk.png", scale: 4),
                    Text.rich(
                      TextSpan(text: "${_controller.size} GB\n", children: [
                        TextSpan(text: "SATA Disk"),
                      ]),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(
                          TextSpan(
                            text: "${_controller.mountPoint}\n",
                            children: [
                              TextSpan(
                                text:
                                    "${100 - double.tryParse(_controller.aval).toInt()} GB available of ${_controller.size} GB",
                                style: TextStyle(fontSize: 11),
                              ),
                            ],
                          ),
                          style: TextStyle(fontSize: 12),
                        ),
                        ButtonMac("Manage..."),
                      ],
                    ),
                    SizedBox(height: 10),
                    PhysicalModel(
                      color: Colors.white,
                      elevation: 1,
                      borderRadius: BorderRadius.circular(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex:
                                      double.tryParse(_controller.aval).toInt(),
                                  child: Container(
                                    height: 20,
                                    color: Color(0xff838384),
                                  ),
                                ),
                                Expanded(
                                  flex: 100 -
                                      double.tryParse(_controller.aval).toInt(),
                                  child: Container(
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xff474748),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              left: 5,
                              bottom: 3.5,
                              child: Text(
                                "System",
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
