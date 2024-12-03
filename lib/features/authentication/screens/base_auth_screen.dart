import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_exam/ui/theme/jobr_icons.dart';
import 'package:flutter_exam/ui/theme/padding_sizes.dart';
import 'package:flutter_exam/ui/theme/text_styles.dart';
import 'package:go_router/go_router.dart';
import 'package:lyte_studios_flutter_ui/lyte_studios_flutter_ui.dart';

class BaseAuthScreen extends StatelessWidget {
  final Widget child;

  const BaseAuthScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/background/login_video.gif',
            ),
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(),
                      child: const Center(
                        child: SvgIcon(
                          JobrIcons.logoLight,
                          size: 90,
                          leaveUnaltered: true,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: PaddingSizes.large,
                    left: PaddingSizes.medium,
                    child: Visibility(
                      visible: true ?? context.canPop(),
                      child: ClearInkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: SvgIcon(
                            JobrIcons.chevronLeftIcon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyles.titleMedium.copyWith(
                    color: TextStyles.clearText,
                  ),
                  children: [
                    const TextSpan(
                      text: 'Making ',
                    ),
                    TextSpan(
                      text: 'matches',
                      style: TextStyles.titleMedium.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const TextSpan(
                      text: ' that work.',
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SafeArea(
                  top: false,
                  bottom: true,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PaddingSizes.xxl,
                    ),
                    child: child,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
