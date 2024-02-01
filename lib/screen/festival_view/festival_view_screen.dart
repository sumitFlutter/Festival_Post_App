import 'dart:io';
import 'dart:typed_data';
import 'package:share_plus/share_plus.dart';
import 'package:festival_app/model/image_model.dart';
import 'package:festival_app/utils/global.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

class FestivalViewScreen extends StatefulWidget {
  const FestivalViewScreen({super.key});

  @override
  State<FestivalViewScreen> createState() => _FestivalViewScreenState();
}

class _FestivalViewScreenState extends State<FestivalViewScreen> {
  String family="s1";
  List<String> fontFamily = ["s1", "s2"];
  GlobalKey key = GlobalKey();
  bool textEdit = false;
  bool bgI = false;
  bool background = false;
  bool bgC = false;
  bool tInput = false;
  bool tColor = false;
  bool tSize = false;
  bool tAlign = false;
  bool tWeight = false;
  bool fontWeight1 = false;
  bool italic = false;
  Alignment a = Alignment.center;
  Color bgColor = Colors.transparent;
  String text1 = "";
  Color textColor = Colors.white;
  TextEditingController s = TextEditingController();
  String? image = "assets/bg_images/splesh.jpg";
  List colorList = [
    Colors.black,
    Colors.white,
    ...Colors.primaries,
    ...Colors.accents
  ];
  ImageModel data = ImageModel();
  double font = 40;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mainColor.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as ImageModel;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Post - Edit",
              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "s1"),
            ),
            actions: [
              IconButton(
                  onPressed: () async {
                    RenderRepaintBoundary b1 = key.currentContext!
                        .findRenderObject() as RenderRepaintBoundary;
                    ui.Image image = await b1.toImage(pixelRatio: 5);
                    ByteData? byteData =
                        await image.toByteData(format: ui.ImageByteFormat.png);
                    String path =
                        "/storage/emulated/0/Download/IMG${DateTime.now()}.png";
                    await File(path)
                        .writeAsBytes(byteData!.buffer.asUint8List());
                  },
                  icon: Icon(Icons.save)),
              IconButton(
                  onPressed: () async {
                    RenderRepaintBoundary b1 = key.currentContext!
                        .findRenderObject() as RenderRepaintBoundary;
                    ui.Image image = await b1.toImage(pixelRatio: 5);
                    ByteData? byteData =
                    await image.toByteData(format: ui.ImageByteFormat.png);
                    String path =
                        "/storage/emulated/0/Download/IMG${DateTime.now()}.png";
                    await File(path)
                        .writeAsBytes(byteData!.buffer.asUint8List());
                    final result = await Share.shareXFiles([XFile(path)], text: 'Great picture');
                  },
                  icon: Icon(Icons.share))
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RepaintBoundary(
                    key: key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        background || textEdit
                            ? Stack(
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.5,
                                      width: MediaQuery.sizeOf(context).width,
                                      child: Image.asset(
                                        "$image",
                                        fit: BoxFit.contain,
                                      )),
                                  Container(
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.5,
                                    width: MediaQuery.sizeOf(context).width,
                                    padding: const EdgeInsets.all(20),
                                    color: bgColor,
                                    child: Align(
                                        alignment: a,
                                        child: Text(
                                          "$text1",
                                          style: TextStyle(
                                              fontSize: font,
                                              color: textColor,
                                              fontWeight: fontWeight1
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              fontStyle: italic
                                                  ? FontStyle.italic
                                                  : FontStyle.normal),
                                        )),
                                  ),
                                ],
                              )
                            : Stack(
                                children: [
                                  Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.7,
                                      width: MediaQuery.sizeOf(context).width,
                                      child: Image.asset(
                                        "$image",
                                        fit: BoxFit.contain,
                                      )),
                                  Container(
                                    height:
                                        MediaQuery.sizeOf(context).height * 0.7,
                                    width: MediaQuery.sizeOf(context).width,
                                    padding: const EdgeInsets.all(20),
                                    color: bgColor,
                                    child: Align(
                                        alignment: a,
                                        child: Text(
                                          "$text1",
                                          style: TextStyle(
                                              fontSize: font,
                                              color: textColor,
                                              fontWeight: fontWeight1
                                                  ? FontWeight.bold
                                                  : FontWeight.normal,
                                              fontStyle: italic
                                                  ? FontStyle.italic
                                                  : FontStyle.normal,
                                              fontFamily: family),
                                        )),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          background = !background;
                        });
                      },
                      child:
                          mainTitle(title1: "Background Edit", vi: background)),
                  Visibility(
                    visible: background,
                    child: Column(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                bgI = !bgI;
                              });
                            },
                            child: title(title1: "Image", v: bgI)),
                        Visibility(
                          visible: bgI,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    bgImage(
                                        back: "assets/bg_images/splesh.jpg"),
                                    bgImage(back: data.i1),
                                    bgImage(back: data.i2),
                                    bgImage(back: data.i3),
                                    bgImage(back: data.i4),
                                    bgImage(back: data.i5),
                                    bgImage(back: data.i6),
                                    bgImage(back: data.i7),
                                    bgImage(back: data.i8),
                                    bgImage(back: data.i9),
                                    bgImage(back: data.i10),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                bgC = !bgC;
                              });
                            },
                            child: title(title1: "Color", v: bgC)),
                        Visibility(
                          visible: bgC,
                          child: SizedBox(
                              height: 60,
                              child: ListView.builder(
                                  itemCount: colorList.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            bgColor = colorList[index];
                                          });
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          margin: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: colorList[index],
                                          ),
                                        ),
                                      ))),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          textEdit = !textEdit;
                        });
                      },
                      child: mainTitle(title1: "Text Edit", vi: textEdit)),
                  Visibility(
                    visible: textEdit,
                    child: Column(
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                tInput = !tInput;
                              });
                            },
                            child: title(title1: "Input", v: tInput)),
                        Visibility(
                          visible: tInput,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.50,
                                    child: TextField(
                                      controller: s,
                                      textInputAction: TextInputAction.done,
                                      decoration: const InputDecoration(
                                          hintText: "Happy ....."),
                                      maxLines: 2,
                                    )),
                                SizedBox(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.25,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        text1 = s.text;
                                        s.clear();
                                      });
                                    },
                                    child: const Text("Save"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        InkWell(
                            onTap: () {
                              setState(() {
                                tColor = !tColor;
                              });
                            },
                            child: title(title1: "Color", v: tColor)),
                        Visibility(
                          visible: tColor,
                          child: SizedBox(
                              height: 60,
                              child: ListView.builder(
                                  itemCount: colorList.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) => InkWell(
                                        onTap: () {
                                          setState(() {
                                            textColor = colorList[index];
                                          });
                                        },
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          margin: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: colorList[index],
                                          ),
                                        ),
                                      ))),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                tSize = !tSize;
                              });
                            },
                            child: title(title1: "FontSize", v: tSize)),
                        Visibility(
                          visible: tSize,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      font = font + 5;
                                    });
                                  },
                                  icon: const Icon(Icons.add)),
                              Text("$font"),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      font = font - 5;
                                    });
                                  },
                                  icon: const Icon(Icons.remove))
                            ],
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              setState(() {
                                tAlign = !tAlign;
                              });
                            },
                            child: title(title1: "FontAlign", v: tAlign)),
                        Visibility(
                          visible: tAlign,
                          child: SizedBox(
                            height: 50,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.center;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_center),
                                      Text("Center"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.centerLeft;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_left),
                                      Text("Center left"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.centerRight;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_right),
                                      Text("Center Right"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.topLeft;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_left),
                                      Text("Top left"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.topCenter;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_center),
                                      Text("Top Center"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.topRight;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_right),
                                      Text("Top Right"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.bottomLeft;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_left),
                                      Text("Bottom left"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.bottomCenter;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_center),
                                      Text("Bottom Center"),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      a = Alignment.bottomRight;
                                    });
                                  },
                                  child: const Column(
                                    children: [
                                      Icon(Icons.align_horizontal_right),
                                      Text("Bottom Right"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                        InkWell(
                            onTap: () {
                              setState(() {
                                tWeight = !tWeight;
                              });
                            },
                            child: title(title1: "FontWeight", v: tWeight)),
                        Visibility(
                          visible: tWeight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.format_bold),
                                onPressed: () {
                                  setState(() {
                                    fontWeight1 = !fontWeight1;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              IconButton(
                                icon: const Icon(Icons.format_italic),
                                onPressed: () {
                                  setState(() {
                                    italic = !italic;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget bgImage({required String? back}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          image = back;
          bgColor = Colors.transparent;
        });
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          child: Stack(
            children: [
              Image.asset(
                "${back}",
                fit: BoxFit.fill,
                height: 100,
                width: 100,
              ),
              back==image?Align(
                alignment: Alignment.center,
                  child: Icon(Icons.swipe_right_sharp,size: 50,)):Container(),
            ],
          )),
    );
  }

  Widget title({required String title1, required bool v}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title1,
                  style: const TextStyle(fontSize: 18),
                ),
                v
                    ? const Icon(Icons.arrow_drop_up)
                    : const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          v
              ? Container()
              : const Divider(
                  color: Colors.black87,
                ),
        ],
      ),
    );
  }

  Widget mainTitle({required String title1, required bool vi}) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title1,
                  style: const TextStyle(fontSize: 22),
                ),
                vi
                    ? const Icon(Icons.arrow_drop_up)
                    : const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          vi
              ? Container()
              : const Divider(
                  color: Colors.black87,
                ),
        ],
      ),
    );
  }
}
