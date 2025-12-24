import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_input.dart';
import '../../../../core/widgets/gradient_background.dart';
import '../viewmodel/otp_view_model.dart';

// class OtpView extends StatelessWidget {
//   const OtpView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final vm = Provider.of<OtpViewModel>(context);

//     return GradientBackground(
//       showCurvedHeader: true,
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           children: [
//             const SizedBox(height: 160),

//             Card(
//               elevation: 8,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(24),
//                 child: Form(
//                   key: vm.formKey,
//                   child: Column(
//                     children: [
//                       Text(
//                         'OTP Verification',
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Theme.of(context).colorScheme.primary,
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       // CustomInput(
//                       //   label: "Phone Number",
//                       //   hintText: "Enter phone number",
//                       //   controller: vm.phoneController,
//                       //   keyboardType: TextInputType.phone,
//                       //   validator: (v) =>
//                       //       v!.isEmpty ? "Please enter phone no." : null,
//                       // ),
//                       // const SizedBox(height: 16),
//                       CustomInput(
//                         label: "OTP",
//                         hintText: "Enter 6-digit OTP",
//                         controller: vm.otpController,
//                         keyboardType: TextInputType.number,
//                         validator: (v) {
//                           if (v == null || v.isEmpty) return "Enter OTP";
//                           if (v.length != 6) return "OTP must be 6 digits";
//                           return null;
//                         },
//                       ),

//                       const SizedBox(height: 32),

//                       CustomButton(
//                         text: "Verify OTP",
//                         onPressed: () => vm.verifyOtp(context),
//                         isLoading: vm.isLoading,
//                       ),
//                       const SizedBox(height: 16),

//                       TextButton(
//                         onPressed: () {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text("OTP resent!")),
//                           );
//                         },
//                         child: const Text(
//                           "Resend OTP",
//                           style: TextStyle(color: Colors.blue),
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
// }
class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<OtpViewModel>(context, listen: false);

    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    vm.initOtp(context: context, otp: args['otp'], phone: args['phone']);

    return GradientBackground(
      showCurvedHeader: true,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 160),
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: vm.formKey,
                  child: Column(
                    children: [
                      Text(
                        'OTP Verification',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 20),

                      CustomInput(
                        label: "OTP",
                        hintText: "Enter 6-digit OTP",
                        controller: vm.otpController,
                        keyboardType: TextInputType.number,
                        validator: (v) {
                          if (v == null || v.isEmpty) return "Enter OTP";
                          if (v.length != 6) return "OTP must be 6 digits";
                          return null;
                        },
                      ),

                      const SizedBox(height: 32),

                      Consumer<OtpViewModel>(
                        builder: (_, vm, _) => CustomButton(
                          text: "Verify OTP",
                          onPressed: () => vm.verifyOtp(context),
                          isLoading: vm.isLoading,
                        ),
                      ),
                      const SizedBox(height: 20),

                      GestureDetector(
                        onTap: () => vm.resendOtp(context),
                        child: const Text(
                          "Resend OTP",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
