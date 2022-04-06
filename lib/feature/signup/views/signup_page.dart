import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../api/django_api.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../core/providers/loading_provider.dart';

class SignupPage extends HookWidget {
  const SignupPage({Key? key}) : super(key: key);

  static const _emailKey = GlobalObjectKey<FormState>(0);
  static const _passwordKey = GlobalObjectKey<FormState>(1);
  static const _confirmPasswordKey = GlobalObjectKey<FormState>(2);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.blue;
    }

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/img3.jpeg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 80, top: 100, bottom: 50),
              child: const Text(
                'Lyrics and Chords',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.3,
                    right: 5,
                    left: 5),
                child: Column(children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: VxTextField(
                          controller: firstNameController,
                          fillColor: Colors.white60,
                          hint: 'First Name',
                          borderType: VxTextFieldBorderType.roundLine,
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 170,
                        height: 50,
                        child: VxTextField(
                          controller: lastNameController,
                          fillColor: Colors.white60,
                          hint: 'Last Name',
                          borderType: VxTextFieldBorderType.roundLine,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: _emailKey,
                    child: VxTextField(
                      controller: emailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (v) {
                        v ??= '';
                        return RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(v)
                            ? null
                            : 'Invalid email';
                      },
                      fillColor: Colors.white60,
                      hint: 'Email Address',
                      borderType: VxTextFieldBorderType.roundLine,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: _passwordKey,
                    child: VxTextField(
                      controller: passwordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (v) {
                        v ??= '';
                        return v.length > 6
                            ? null
                            : 'Must be at least 6 letter long.';
                      },
                      isPassword: true,
                      fillColor: Colors.white60,
                      hint: 'Password',
                      borderType: VxTextFieldBorderType.roundLine,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: _confirmPasswordKey,
                    child: VxTextField(
                      controller: confirmPasswordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (v) => passwordController.text == v
                          ? null
                          : 'Passwords do not match',
                      isPassword: true,
                      fillColor: Colors.white60,
                      hint: 'Confirm Password',
                      borderType: VxTextFieldBorderType.roundLine,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      HookConsumer(
                        builder: (context, ref, child) {
                          final isChecked = useState(false);
                          return Checkbox(
                            checkColor: Colors.white,
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            value: isChecked.value,
                            onChanged: (bool? value) {
                              isChecked.value = value!;
                            },
                          );
                        },
                      ),
                      const Text(
                        'I accept terms and privacy policy ',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 15, 20),
                    child: const Text(
                      'Click here to learn about Terms and condition',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 10),
                        child: Consumer(
                          builder: (context, ref, child) => RaisedButton(
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(),
                            ),
                            onPressed: () async {
                              if (_emailKey.currentState!.validate() &&
                                  _passwordKey.currentState!.validate() &&
                                  _confirmPasswordKey.currentState!
                                      .validate()) {
                                ref.read(loadingRef.notifier).loading = true;
                                final userDetails = await DjangoApi.createUser(
                                    emailController.text,
                                    passwordController.text,
                                    firstName: firstNameController.text,
                                    lastName: lastNameController.text);
                                ref.read(loadingRef.notifier).loading = false;
                                context.showToast(
                                  msg: userDetails != null
                                      ? 'Successful'
                                      : 'User already exists',
                                );
                              }
                            },
                            padding: const EdgeInsets.all(10.0),
                            textColor: const Color(0xff4c505b),
                            child: ref.watch(loadingRef)
                                ? const CircularProgressIndicator()
                                : const Text(
                                    "Sign up",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(60, 0, 30, 10),
                          child: const Text(
                            'Already have account, Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
