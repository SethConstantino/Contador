import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Fondo(),
          Contenido(),
        ],
      ),
    );
  }
}

class Fondo extends StatelessWidget {
  const Fondo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 151, 210, 251),
        Color.fromARGB(255, 131, 188, 255),
      ], begin: Alignment.centerRight, end: Alignment.centerLeft)),
    );
  }
}

class Contenido extends StatefulWidget {
  const Contenido({Key? key}) : super(key: key);

  @override
  State<Contenido> createState() => _ContenidoState();
}

class _ContenidoState extends State<Contenido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Welcome to your account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Datos(),
        ],
      ),
    );
  }
}

class Datos extends StatefulWidget {
  const Datos({Key? key}) : super(key: key);

  @override
  State<Datos> createState() => _DatosState();
}

class _DatosState extends State<Datos> {
  bool obs = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          width: 50,
          height: 20,
        ),
        const Text(
          'Email',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'email@example.com'),
        ),
        const SizedBox(
          width: 50,
          height: 20,
        ),
        const Text(
          'Password',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        TextFormField(
          obscureText: obs,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: 'password',
            suffixIcon: IconButton(
              icon: const Icon(Icons.remove_red_eye_outlined),
              onPressed: () {
                setState(() {
                  obs == true ? obs = false : obs = true;
                });
              },
            ),
          ),
        ),
        Remember(),
        const SizedBox(
          height: 5,
        ),
        Botones()
      ]),
    );
  }
}

class Remember extends StatefulWidget {
  Remember({Key? key}) : super(key: key);

  @override
  State<Remember> createState() => _RememberState();
}

class _RememberState extends State<Remember> {
  bool valor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: valor,
            onChanged: (value) {
              setState(() {
                valor == false ? valor = true : valor = false;
              });
            }),
        const Text('Remember me'),
        const Spacer(),
        TextButton(onPressed: () {}, child: const Text('Forgot password?'))
      ],
    );
  }
}

class Botones extends StatelessWidget {
  const Botones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xff142047))),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
          width: double.infinity,
        ),
        const Text(
          ' or sign with',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 50,
          height: 20,
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Sign with Google',
                style: TextStyle(color: Color(0xff142047), fontSize: 18),
              )),
        ),
        const SizedBox(
          width: 50,
          height: 20,
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Sign with Facebook',
                style: TextStyle(color: Color(0xff142047), fontSize: 18),
              )),
        ),
        const SizedBox(),
        Container()
      ],
    );
  }
}