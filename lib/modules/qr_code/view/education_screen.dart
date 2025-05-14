// ignore_for_file: use_build_context_synchronously

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/education_cubit.dart';
import 'package:takween/modules/qr_code/controller/education_state.dart';

class EducationSCreen extends StatefulWidget {
  const EducationSCreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EducationSCreenState();
}

class _EducationSCreenState extends State<EducationSCreen> {
  var player = AudioPlayer();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EducationCubit(),
      child: BlocBuilder<EducationCubit, EducationState>(
          builder: (context, state) {
        final controller = EducationCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          body: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image:
                        AssetImage("assets/images/educationBackground.jpg"))),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 600,
                  child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: controller.items.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) => InkWell(
                      onTap: () async {
                        await player.play(
                          AssetSource(controller.items[index].voicePath ?? ""),
                        );
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => controller.items[index].page,
                        ));
                      },
                      borderRadius: BorderRadius.circular(25),
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  color: Colors.grey.shade300)
                            ]),
                        child: Center(
                          child: Text(
                            controller.items[index].title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 30,
                              fontFamily: "cairo",
                              fontWeight: FontWeight.w900,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
      

























      /* body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(flex: 10, child: _buildQrView(context)),
              (result == null)
                  ? SizedBox()
                  : Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          describeEnum(result!.format) != "qrcode"
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: Text(' ${result!.code} ',
                                              overflow: TextOverflow.ellipsis,
                                              style: const TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600)),
                                        ),
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            // ScaffoldMessenger.of(context)
                                            //     .showSnackBar(SnackBar(
                                            //   content: Text(result!.code.toString()),
                                            // ));
                                            getScreen(result!.code.toString());
                                          },
                                          child: const Text("Go"))
                                    ],
                                  ),
                                )
                        ],
                      ),
                    )
            ],
          ),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.all(8),
              child: IconButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.grey.shade500)),
                  onPressed: () async {
                    await controller?.toggleFlash();
                    setState(() {});
                  },
                  icon: FutureBuilder(
                    future: controller?.getFlashStatus(),
                    builder: (context, snapshot) {
                      return Icon(
                        // ignore: unnecessary_null_comparison
                        !(snapshot.data == null)
                            ? Icons.flash_on
                            : Icons.flash_off,
                        color: Colors.white,
                        size: 30,
                      );
                    },
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
 */


/* 

 Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  bool isPause = false;
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
      isPause = false;
    }
    controller!.resumeCamera();
    isPause = true;
  }

  getScreen(val) {
    Widget? page;
    switch (val) {
      case "TakweenHome":
        page = const HouseScreen();
        break;
      case "TakweenSupermarket":
        page = const SupermarketScreen();
        break;

      case "TakweenStreet":
        page = const StreetScreen();
        break;

      case "TakweenSchool":
        page = const SchoolScreen();
        break;

      case "TakweenMoney":
        page = const MoneyScreen();
        break;

      case "TakweenFitr":
        page = const FitrScreen();
        break;

      case "TakweenAdha":
        page = const AdhaScreen();
        break;

      case "TakweenRamadan":
        page = const RamadanScreen();
        break;
    }
    if (page == null) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: const Text(
                  "QR-Code Alert",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                content: const Text(
                  "This QR-Code not belong to this app content.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                actions: [
                  TextButton(
                      onPressed: () async {
                        try {
                          if (!await launchUrl(Uri.parse(val))) {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content:
                                  Text("Can't find content for this QR-Code"),
                            ));
                          }
                        } catch (e) {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content:
                                Text("Can't find content for this QR-Code"),
                          ));
                        }
                      },
                      child: const Text("Continue any way")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("cancel"))
                ],
              ));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page!,
          )).then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const HomePageScreen(),
            ),
            (route) => false);
      });
    }
  } */