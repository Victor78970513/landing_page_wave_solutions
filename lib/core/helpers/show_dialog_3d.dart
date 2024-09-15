import 'package:flutter/material.dart';
import 'dart:html';
import 'dart:ui_web' as ui;
import 'package:uuid/uuid.dart';

void showDialog3D(BuildContext context, String path3D) {
  showDialog(
    context: context,
    builder: (context) {
      return Show3DProductModel(path3D: path3D);
    },
  );
}

class Show3DProductModel extends StatefulWidget {
  final String path3D;
  const Show3DProductModel({super.key, required this.path3D});

  @override
  State<Show3DProductModel> createState() => _Show3DProductModelState();
}

class _Show3DProductModelState extends State<Show3DProductModel> {
  late Widget _iframeWidget;

  @override
  void initState() {
    super.initState();
    String uniqueViewId = 'iframeElement_${const Uuid().v4()}';
    final IFrameElement iFrameElement = IFrameElement();
    iFrameElement.style.height = '100%';
    iFrameElement.style.width = '100%';
    iFrameElement.src = widget.path3D;
    iFrameElement.style.border = 'none';
    ui.platformViewRegistry.registerViewFactory(
      uniqueViewId,
      (int viewId) => iFrameElement,
    );
    _iframeWidget = HtmlElementView(
      key: UniqueKey(),
      viewType: uniqueViewId,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Dialog(
      backgroundColor: Colors.transparent,
      child: SizedBox(
        height: size.height * 0.6,
        width: size.width * 0.8,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: _iframeWidget,
            ),
            Positioned(
              bottom: 20,
              right: 0,
              child: Container(
                height: size.height * 0.05,
                width: size.width * 0.1,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
