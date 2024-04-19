import 'package:flutter/material.dart';
import 'package:flutter_ayush_hospital_duplicate/home_page.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();

  void _submitData() {
    final enteredPassword = double.tryParse(_passwordController.text);
    final passwordIsInvalid = enteredPassword == null || enteredPassword <= 0;

    if (_usernameController.text.trim().isEmpty || passwordIsInvalid) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text(
              'Please make sure a valid Username/ Phone number and Password was entered'),
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
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9FBF8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //image
              Center(child: Image.asset('assets/register_page_image.png')),
              const SizedBox(height: 55),
              //register text
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '   Register',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36,
                    fontFamily: 'Inria Serif',
                    height: 0.03,
                    letterSpacing: 2.16,
                  ),
                ),
              ),
              const SizedBox(height: 55),
              //container username
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
                    side: const BorderSide(width: 1, color: Color(0xFF1F9E88)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 0, 15),
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
              const SizedBox(height: 30),
              //container phone number
              Container(
                width: 320,
                height: 70,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/phone_icon1.png'),
                    scale: 3,
                    alignment: Alignment.centerLeft,
                  ),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF1F9E88)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 0, 15),
                  child: TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text(' Phone number'),
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
              const SizedBox(height: 30),
              //container password
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
                    padding: const EdgeInsets.fromLTRB(35, 0, 0, 15),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        label: Text('  --------'),
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
              // container register
              const SizedBox(height: 50),
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
                    print(_phoneController);
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Inria Serif',
                      height: 1.00,
                      letterSpacing: 1.44,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1F9E88),
                  ),
                ),
              ),
              const SizedBox(height: 25),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Already have an account ? ',
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
                      text: 'Sign In',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
