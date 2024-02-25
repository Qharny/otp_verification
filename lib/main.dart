import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

// class _otp extends StatelessWidget {
//   const _otp();

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       'OTP Widget',
//       style: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }

class ResendCodeWidget extends StatefulWidget {
  const ResendCodeWidget({super.key});

  @override
  _ResendCodeWidgetState createState() => _ResendCodeWidgetState();
}

class _ResendCodeWidgetState extends State<ResendCodeWidget> {
  int _seconds = 30;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds > 0) {
        setState(() {
          _seconds--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String displayTime =
        'Resend Code in 0:${_seconds.toString().padLeft(2, '0')}';
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(displayTime),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "OTP VERIFICATION",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFFF59C21),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const _otp(),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    7,
                    (index) => SizedBox(
                      height: 70,
                      width: 50,
                      child: TextFormField(
                        onSaved: (pin1) {},
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF59C21),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                ),
                child: const Text(
                  "Verify",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              const ResendCodeWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
