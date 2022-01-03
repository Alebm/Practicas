// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:form_scree_app/src/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

//utilizando mixin para poner las validaciones

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  /* Creamos una globalkey de especie <FormState> para poder utilizar los metodos 
  que este Form State utiliza, de forma que con estos podemos validar y guardar los datos
  escritos en el textformfield */
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: emailField(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: passwordField(),
              ),
              submitField(),
            ],
          ),
        ),
      ),
    );
  }

/*eL validator sirve par agenerar valudaciones en el textformfiel las cuales pusimos en el mising
el onSaved sirve para guardar los datos que escribimos en los textformfield,. pero e be hacer des pues de evaluar
ver mas abajo en el boton */

  Widget emailField() {
    return TextFormField(
      onSaved: (newValue) {
        print(newValue);
      },
      validator: validateEmail,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email",
        hintText: "Your Email",
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      onSaved: (newValue) {},
      validator: validatePassword,
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Your Password",
      ),
    );
  }

  Widget submitField() {
    return ElevatedButton(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
        }
      },
      child: const Text("Entrar"),
    );
  }
}
