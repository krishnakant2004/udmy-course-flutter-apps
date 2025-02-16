import 'dart:ui';
import 'package:app_firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          primary: Colors.white,
          brightness: Brightness.light,
          onPrimary: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Krishi App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  String? _email;
  String? _passward;
  int _counter = 0;
  bool _ischecked = false;
  bool obsecure = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Prevents layout from resizing when keyboard appears
      appBar: AppBar(
        // backgroundColor: Colors.teal,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/login-backgroung-image.jpg',
                ), // Your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
            child: Column(
              children: [
                // Login form content
                Center(
                  child: Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title and Subtitle
                          const Text(
                            "Log in to your account✨",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Welcome back! Please enter your details.",
                            style: TextStyle(
                                color: Colors.black54.withOpacity(0.6)),
                          ),

                          const SizedBox(height: 20),
                          const Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          // Email TextField
                          TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  !value.contains('@')) {
                                return 'you must enter email.';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              _email = value.trim();
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, right: 10, left: 5),
                                child: SvgPicture.asset(
                                  'assets/svg_images/email-svgrepo-com.svg', // Path to your SVG file
                                  height: 15,
                                  width: 15,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.8),
                                      BlendMode.srcIn),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.3),
                              hintText: 'Enter your email',
                              hintStyle: const TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: const TextStyle(color: Colors.black),
                          ),
                          const SizedBox(height: 15),
                          // Password TextField
                          const Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.trim().length < 8) {
                                return 'password at least contain 8 char';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              _passward = value.trim();
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    obsecure = !obsecure;
                                  });
                                },
                                icon: Icon(
                                  obsecure
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                                color: Colors.black.withOpacity(0.8),
                              ),
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.3),
                              hintText: 'Password',
                              enabled: true,
                              hintStyle: const TextStyle(color: Colors.white),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, bottom: 10, right: 10, left: 5),
                                child: SvgPicture.asset(
                                  'assets/svg_images/lock-svgrepo-com.svg', // Path to your SVG file
                                  height: 15,
                                  width: 15,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.8),
                                      BlendMode.srcIn),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            obscureText: obsecure,
                            style: const TextStyle(color: Colors.black),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _ischecked = !_ischecked;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    _ischecked
                                        ? "assets/svg_images/checkmark-square-svgrepo-com.svg"
                                        : "assets/svg_images/square-svgrepo-com.svg",
                                    height: 20,
                                    width: 20,
                                    colorFilter: _ischecked?const ColorFilter.mode(Colors.blue, BlendMode.srcIn):const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                                  ),
                                ),
                              ),
                              const Text(
                                "Remember for 30 Days",
                                style: TextStyle(color: Colors.black54),
                              ),
                              const Spacer(),
                              const Text(
                                "Forgatton Password?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          // Login button
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {}
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black.withOpacity(1),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 80,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Social Media Sign in Icons
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.g_mobiledata, size: 30),
                              SizedBox(width: 20),
                              Icon(Icons.facebook, size: 30),
                              SizedBox(width: 20),
                              Icon(Icons.apple, size: 30),
                            ],
                          ),
                          const SizedBox(height: 15),
                          // Register Link
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?"),
                              SizedBox(width: 5),
                              Text(
                                "Register Now",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: Padding(
              padding: const EdgeInsets.only(left: 17),
              child: SvgPicture.asset(
                'assets/svg_images/Graident-Ai-Robot.svg',
                height: 120.0,
                width: 120.0,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            right: 45,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue, // Background color
                border: Border.all(
                  color: Colors.white, // Outline color
                  width: 1.0, // Outline thickness
                ),
                borderRadius:
                    BorderRadius.circular(12), // Rounded corners (optional)
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 0),
                  child: Text(
                    'AI chatbot',
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
