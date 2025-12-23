// import 'package:devanasoft_app/core/widgets/custom_input.dart';
// import 'package:devanasoft_app/core/widgets/gradient_background.dart';
// import 'package:devanasoft_app/features/Signin_SignOut_screens/otp/model/otp_model.dart';
// import 'package:flutter/material.dart';

// class OtpScreen extends StatefulWidget {
//   const OtpScreen({super.key, required String arguments});

//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }

// class _OtpScreenState extends State<OtpScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _otpController = TextEditingController();
//   final _phoneController = TextEditingController();

//   bool _isLoading = false;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final args = ModalRoute.of(context)?.settings.arguments;
//       if (args != null) {
//         _phoneController.text = args.toString();
//       }
//     });
//   }

//   void _verifyOtp() async {
//     if (!_formKey.currentState!.validate()) return;

//     setState(() {
//       _isLoading = true;
//     });

//     // Simulate API call
//     await Future.delayed(const Duration(seconds: 2));

//     final model = OtpModel(
//       phoneNumber: _phoneController.text,
//       otp: int.tryParse(_otpController.text) ?? 0,
//     );

//     print('Patient OTP Data: ${model.toJson()}');

//     setState(() {
//       _isLoading = false;
//     });

//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(
//         content: Text('OTP verified successfully!'),
//         backgroundColor: Colors.green,
//       ),
//     );
//        Navigator.pushNamed(
//       context,
//       '/otp',
//       arguments: phoneController.text,
//     );

//   //   Navigator.push(
//   //     context,
//   //     MaterialPageRoute(builder: (context) => LandingPage()),
//   //   );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GradientBackground(
//       showCurvedHeader: true,
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 120),
//             Card(
//               elevation: 8,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(24.0),
//                 child: Form(
//                   key: _formKey,
//                   child: Column(
//                     children: [
//                       Text(
//                         'OTP Verification',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).colorScheme.primary,
//                           fontFamily: 'Poppins',
//                         ),
//                       ),
//                       const SizedBox(height: 16),
//                       const Text(
//                         'Enter the OTP sent to your phone number',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(color: Colors.grey, fontSize: 14),
//                       ),
//                       const SizedBox(height: 24),
//                       CustomInput(
//                         label: 'Phone Number',
//                         hintText: 'Enter your phone number',
//                         controller: _phoneController,
//                         keyboardType: TextInputType.phone,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter your phone number';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 16),
//                       CustomInput(
//                         label: 'OTP',
//                         hintText: 'Enter 6-digit OTP',
//                         controller: _otpController,
//                         keyboardType: TextInputType.number,
//                         validator: (value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Please enter OTP';
//                           }
//                           if (value.length != 6) {
//                             return 'OTP must be 6 digits';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 32),
//                       CustomButton(
//                         text: 'Verify OTP',
//                         onPressed: _verifyOtp,
//                         isLoading: _isLoading,
//                       ),
//                       const SizedBox(height: 16),
//                       TextButton(
//                         onPressed: () {
//                           print('Resend OTP requested');
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(
//                               content: Text('OTP resent to your phone'),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           'Resend OTP',
//                           style: TextStyle(
//                             color: Color(0xFF1E88E5),
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _otpController.dispose();
//     _phoneController.dispose();
//     super.dispose();
//   }
// }
