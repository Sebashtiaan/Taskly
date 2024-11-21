import 'package:flutter/material.dart';
import 'package:proyecto_taskly/adapters/ui/llenarServicio.dart';
import 'package:proyecto_taskly/components/colors.dart';
import 'package:proyecto_taskly/size_config.dart';

//Metodod de textfield

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final Color color;
  final double altura;
  final double ancho;
  final IconData? icon;
  final Color? iconColor;

  const MyTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.color,
    required this.altura,
    required this.ancho,
    required String label,  this.icon,  this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: SizedBox(
        height: getProportionateScreenHeight(altura),
        width: getProportionateScreenWidth(ancho),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            fillColor: AppColors.TextField,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: color, fontFamily: 'HammersmithOne'),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            suffixIcon: Icon(icon, color: iconColor,),
          ),
        ),
      ),
    );
  }
}

//metodo para textos
class MyText extends StatelessWidget {
  final String label;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  const MyText({
    super.key,
    required this.label,
    required this.size,
    required this.color,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: 'HammersmithOne',
      ),
    );
  }
}

// Metodo de botón
class MyButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final double altura;
  final double ancho;

  const MyButton({
    super.key,
    required this.text,
    this.onTap,
    required this.altura,
    required this.ancho,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getProportionateScreenWidth(ancho),
        height: getProportionateScreenHeight(altura),
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: AppColors.Button,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'HammersmithOne',
            ),
          ),
        ),
      ),
    );
  }
}

//Metodo para las estrellas y el rating

class RatingStars extends StatelessWidget {
  final double rating;

  const RatingStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          Icons.star,
          color: index < rating ? Colors.black : Colors.black.withOpacity(0.3),
          size: 15.0,
        );
      }),
    );
  }
}

class Carta extends StatelessWidget {
  final String descripcion;
  final String numeroEspecialistas;
  final IconData icon;

  const Carta({
    super.key,
    required this.descripcion,
    required this.numeroEspecialistas,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushReplacementNamed(
                        context, Llenardatos.routeName)
      }, 
      child: Container(
        margin: const EdgeInsets.all(8.0),
        width: getProportionateScreenWidth(150),
        height: getProportionateScreenHeight(150),
        decoration: BoxDecoration(
          color: AppColors.TextField,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                size: 50,
                color: Colors.black87,
              ),
              const SizedBox(height: 10),
              Text(
                descripcion,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                numeroEspecialistas,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.Subtitulos,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
