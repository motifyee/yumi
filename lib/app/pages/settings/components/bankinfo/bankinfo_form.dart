import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yumi/app/pages/settings/bankinfo/cubit/bankinfo_cubit.dart';
import 'package:yumi/generated/l10n.dart';
import 'package:yumi/global.dart';
import 'package:yumi/statics/regex.dart';
import 'package:yumi/statics/theme_statics.dart';
import 'package:yumi/app/components/text_form_field.dart';
import 'package:yumi/validators/required_validator.dart';

final GlobalKey<FormState> bankInfoKey = GlobalKey<FormState>();

// class BankInfoFormProvider extends StatelessWidget {
//   const BankInfoFormProvider({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<BankInfoCubit>(
//       create: (context) => BankInfoCubit(),
//       child: const BankInfoForm(),
//     );
//   }
// }

class BankInfoForm extends StatelessWidget {
  const BankInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BankInfoCubit>();

    if (cubit.state.bankInfoForm.bankName.isEmpty && !cubit.state.isLoading) {
      cubit.getBankInfo();
    }

    return BlocBuilder<BankInfoCubit, BankInfoState>(
      builder: (context, state) {
        final bankNameField = TextFormFieldTemplate(
          label: S.of(context).bankName,
          borderStyle: TextFormFieldBorderStyle.borderBottom,
          initialValue: state.bankInfoForm.bankName,
          validators: requiredValidator,
          onSave: (value) =>
              cubit.updateForm((s) => s.copyWith(bankName: value)),
          textInputType: TextInputType.text,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              CustomRegex.lettersNumbersBlankOnly,
            )
          ],
        );

        final accountNameField = TextFormFieldTemplate(
          label: S.of(context).accountName,
          borderStyle: TextFormFieldBorderStyle.borderBottom,
          initialValue: state.bankInfoForm.accountName,
          validators: requiredValidator,
          onSave: (value) =>
              cubit.updateForm((s) => s.copyWith(accountName: value)),
          textInputType: TextInputType.text,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              CustomRegex.lettersBlankOnly,
            )
          ],
        );

        final accountNumberField = TextFormFieldTemplate(
          label: S.of(context).accountNumber,
          borderStyle: TextFormFieldBorderStyle.borderBottom,
          initialValue: state.bankInfoForm.accountNumber,
          validators: requiredValidator,
          onSave: (value) =>
              cubit.updateForm((s) => s.copyWith(accountNumber: value)),
          textInputType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              CustomRegex.numberOnly,
            )
          ],
        );

        final bankCurrencyField = TextFormFieldTemplate(
          label: S.of(context).bankCurrency,
          borderStyle: TextFormFieldBorderStyle.borderBottom,
          initialValue: state.bankInfoForm.currency,
          validators: requiredValidator,
          onSave: (value) =>
              cubit.updateForm((s) => s.copyWith(currency: value)),
          textInputType: TextInputType.text,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              CustomRegex.lettersOnly,
            )
          ],
        );

        final ibanField = TextFormFieldTemplate(
          label: S.of(context).iban,
          borderStyle: TextFormFieldBorderStyle.borderBottom,
          initialValue: state.bankInfoForm.iban,
          onSave: (value) => cubit.updateForm((s) => s.copyWith(iban: value)),
          textInputType: TextInputType.text,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              CustomRegex.lettersNumbersOnly,
            )
          ],
        );

        final swiftCodeField = TextFormFieldTemplate(
          label: S.of(context).swiftCode,
          borderStyle: TextFormFieldBorderStyle.borderBottom,
          initialValue: state.bankInfoForm.swiftCode,
          onSave: (value) =>
              cubit.updateForm((s) => s.copyWith(swiftCode: value)),
          textInputType: TextInputType.text,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(
              CustomRegex.lettersNumbersOnly,
            )
          ],
        );

        final branchAddressField = TextFormFieldTemplate(
          label: S.of(context).swiftCode,
          borderStyle: TextFormFieldBorderStyle.borderBottom,
          initialValue: state.bankInfoForm.branchAddress,
          onSave: (value) =>
              cubit.updateForm((s) => s.copyWith(branchAddress: value)),
          textInputType: TextInputType.text,
          inputFormatters: const [],
        );

        final spinner = Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 0.6,
          ),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );

        return state.isLoading
            ? spinner
            : Container(
                padding: EdgeInsets.all(ThemeSelector.statics.defaultBlockGap),
                child: Form(
                  key: bankInfoKey,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        bankNameField,
                        SizedBox(height: ThemeSelector.statics.defaultLineGap),
                        accountNameField,
                        SizedBox(height: ThemeSelector.statics.defaultLineGap),
                        accountNumberField,
                        SizedBox(height: ThemeSelector.statics.defaultLineGap),
                        bankCurrencyField,
                        SizedBox(height: ThemeSelector.statics.defaultLineGap),
                        ibanField,
                        SizedBox(height: ThemeSelector.statics.defaultLineGap),
                        swiftCodeField,
                        SizedBox(height: ThemeSelector.statics.defaultLineGap),
                        branchAddressField,
                        SizedBox(height: ThemeSelector.statics.defaultLineGap),
                      ],
                    ),
                  ),
                ),
              );
      },
    );
  }
}

class BankInfoSubmitButton extends StatelessWidget {
  const BankInfoSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Container()),

        // cancel
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: ThemeSelector.colors.secondary,
          ),
          child: Text(S.of(context).cancel),
          onPressed: () => context.router
              .maybePop()
              .then((_) => context.read<BankInfoCubit>().resetForm()),
        ),

        SizedBox(width: ThemeSelector.statics.defaultLineGap * 2),

        // save
        TextButton(
          child: Text(S.of(context).save),
          onPressed: () async {
            if (!bankInfoKey.currentState!.validate()) {
              return G.snackBar(S.of(context).invalidInput);
            }

            bankInfoKey.currentState!.save();

            final cubit = context.read<BankInfoCubit>();
            final update = await cubit.updateBankInfo();

            update.fold(
              (l) => G.snackBar(l.toString()),
              (r) async {
                G.snackBar(r);
                Navigator.of(context).pop();
                cubit.resetForm();
                await cubit.getBankInfo();
              },
            );
          },
        ),
      ],
    );
    //   },
    // );
  }
}
