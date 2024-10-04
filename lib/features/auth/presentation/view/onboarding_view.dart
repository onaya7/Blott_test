import 'package:blott/config/navigators/routes_manager.dart';
import 'package:blott/core/components/custom_appbar.dart';
import 'package:blott/core/components/custom_inputfield.dart';
import 'package:blott/core/components/custom_scaffold.dart';
import 'package:blott/core/constants/app_color.dart';
import 'package:blott/core/helpers/ui_helpers.dart';
import 'package:blott/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();

  bool _formCompleted = false;

  void checkValidity() {
    setState(() {
      _formCompleted = _firstNameController.text.isNotEmpty &&
          _lastNameController.text.isNotEmpty &&
          Validators.validateField('First name', _firstNameController.text) ==
              null &&
          Validators.validateField('Last name', _lastNameController.text) ==
              null;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _firstNameFocus.dispose();
    _lastNameFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        title: Text(
          'Your legal name',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          children: [
            Text(
              'We need to know a bit about you so that we can create your account.',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(24),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  CustomInputField(
                    controller: _firstNameController,
                    currentFocus: _firstNameFocus,
                    labelText: 'First name',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) =>
                        Validators.validateField('First name', value),
                    onChanged: (p0) => checkValidity(),
                  ),
                  const Gap(16),
                  CustomInputField(
                    controller: _lastNameController,
                    currentFocus: _lastNameFocus,
                    labelText: 'Last name',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) =>
                        Validators.validateField('Last name', value),
                    onChanged: (p0) => checkValidity(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          elevation: 0,
          backgroundColor: _formCompleted
              ? AppColor.primary
              : AppColor.primary.withOpacity(0.5),
          shape: const CircleBorder(),
          onPressed: _formCompleted
              ? () => UiHelpers.navigateToPageAndRemoveUntil(
                    RoutesManager.notificationRoute,
                  )
              : null,
          child: const Icon(
            Icons.arrow_forward_ios,
            color: AppColor.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}
