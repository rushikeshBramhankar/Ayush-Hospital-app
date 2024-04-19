import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/home_page.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _submitData() {
    final enteredPassword = double.tryParse(_passwordController.text);
    final passwordIsInvalid = enteredPassword == null || enteredPassword <= 0;

    if (_usernameController.text.trim().isEmpty || passwordIsInvalid) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text(
              'Please make sure a valid Username and Password was entered'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text('Okay'),
            )
          ],
        ),
      );
      return;
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const home_screen(),
        ),
      );
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9FBF8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Center(
                child: Image(
                  image: AssetImage('assets/login_page_image.png'),
                  height: 350,
                  width: 350,
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Text(
                    '    Login',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontFamily: 'Inria Serif',
                      height: 0.03,
                      letterSpacing: 2.16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 45),
              const Row(
                children: [
                  Text(
                    '          Please sign in to continue',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Inria Serif',
                      height: 0.08,
                      letterSpacing: 0.90,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Container(
                width: 320,
                height: 70,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/6045/8d9f/f9f0572e944aeda36427de8e7df7d381?Expires=1699228800&Signature=oU7Dre2GgxB6vislClz8mVI6SXLrKS~Ex6lBANKkVvtHufPpMaMOkAi0p3e4CIhCrWL9~5ixFEcpYxncLCmbzdX2s9BVHm9o3vChSPrQX2DpQaJrsCMk2mPfc~JO-v96tQn88vtlXbFqCu7CBvWZrn9YQK3QxG2B9Z4xe9PJ4~66IvzyWRvF4fEpDI2ZeygRwbXnfhe3-rf2NjEpS7bit1E6IzQKaumFCAsjA-iNr2Kz6xR3UjBiRNGQR0w~uwSBk0Nz3Kyf6krthACrp9SpO1v9RJpw4z~VnwXTia5o1hvn0rOCmTQpL~xuCDxwMv0-1YAZ~AXmKsdmGgyJbUQGLA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                    alignment: Alignment.centerLeft,
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 1,
                      color: Color(0xFF1F9E88),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 0, 10),
                  child: TextField(
                    controller: _usernameController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      label: Text('   Username'),
                    ),
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 15,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: 320,
                height: 70,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://s3-alpha-sig.figma.com/img/b911/69b7/7b75040c58b87df500960abc51a3b6f3?Expires=1699228800&Signature=YKULzSLp8pMTXYEarwXrv6eWWn9snhcHlAO7Q53Ols3Q1szk8dqvWzobj3fAOrXNBu9k1b6a4E6IYFeQlzYZnYIB5QyyCsT2Y0U406giSsc-4VYP1jH42Y0gQ7Iwu5PZTgT~f1HHslEVQNOTTaxKsHDva7VGpUY8U0TIENIKJn~C-atitsCXKY79VT0PgBOaVF6ELbZkXT85ojZ0iTvnPll22RXwH~Xd3HdTWc~M2vD5VQpL451dsRrkQPNkZuDrM--OJxMOvnbwztuh3oMvY7fe8Ubl-L9G79Zcygbc7MFKcez~0Pan4o8L9fZzJjQ6jiqjEFsiH5sig33E4BSL3g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
                    alignment: Alignment.centerLeft,
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF1F9E88)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(35, 0, 0, 10),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('     --------'),
                      ),
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                        fontFamily: 'Inria Serif',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Container(
                width: 200,
                height: 48,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    _submitData();
                    print(_usernameController);
                    print(_passwordController);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1F9E88),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inria Serif',
                      height: 1.00,
                      letterSpacing: 1.44,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Container(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account ? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0.08,
                          letterSpacing: 0.84,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF1F9E88),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0.08,
                          letterSpacing: 0.84,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
