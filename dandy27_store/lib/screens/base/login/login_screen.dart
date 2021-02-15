import 'package:dandy27_store/helpers/validators.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(hintText: 'E-mail'),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false ,
                  validator: (email){
                    if(!emailValid(email))
                      return 'E-mail inválido';
                    return null;
                  },
                ),
                TextFormField(
                  controller: passController,
                  decoration: InputDecoration(hintText: 'Senha'),
                  autocorrect: false ,
                  obscureText: true,
                  validator: (pass){
                    if (pass.isEmpty || pass.length < 6)
                      return 'Senha inválida';
                    return null;
                  },
                ),
                const SizedBox(height: 16,),
                Align(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: (){},
                    child: const Text('Esqueci minha senha'),
                  ),

                ),
                const SizedBox(height: 16,),
                SizedBox(
                  height: 44,
                  child: RaisedButton(onPressed: (){
                    if(formKey.currentState.validate()){
                      print(emailController.text);

                    }
                  },
                  color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                  child: const Text('Entrar',
                    style: TextStyle(fontSize: 20),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
