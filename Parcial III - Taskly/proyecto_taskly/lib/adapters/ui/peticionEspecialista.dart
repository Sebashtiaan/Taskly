import 'package:flutter/material.dart';
import 'package:proyecto_taskly/components/colors.dart';
import 'package:proyecto_taskly/components/widgets.dart';
import 'package:proyecto_taskly/size_config.dart';

class Peticionespecialista extends StatefulWidget {
  static const String routeName = 'peticiones';
  final String title;

  const Peticionespecialista({super.key, required this.title});

  @override
  State<Peticionespecialista> createState() => _PeticionespecialistaState();
}

class _PeticionespecialistaState extends State<Peticionespecialista> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.AppBarColor,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu, color: Colors.teal),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Padding(padding: EdgeInsets.all(10)),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'assets/img/taskly_logo.jpg',
                width: 100,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 100),
            child: MyText(
                label: 'Submit your request to a professional',
                size: 30,
                color: AppColors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
  padding: const EdgeInsets.all(15),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
        ),
      ],
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icono circular
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey[200],
                child: Icon(Icons.account_circle, size: 50, color: Colors.black54),
              ),
              const SizedBox(width: 15), // Espaciado entre el ícono y el texto
              
              // Nombre y detalles
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText(
                      label: 'Sebastian Andrade Roa',
                      fontWeight: FontWeight.bold, size: 30, color: AppColors.black,
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Plumber ',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Services 164',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '|',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        Row(
                          children: [
                            RatingStars(rating: 2),
                            SizedBox(width: 5,),
                            Text(
                          '(4.3)',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                          ],
                        ),
                        SizedBox(width: 5),
                        
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
        // Descripción
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            'La forma más básica de añadir un texto a una página web es usando la etiqueta <p> . Aunque en las páginas anteriores te contamos sobre esta etiqueta, recordemos un poco: el elemento párrafo es uno de más usados en HTML para crear y construir los sitios web que visitas a diario.',
            style: TextStyle(fontSize: 12, color: Colors.black54),
            maxLines: 10,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        
        const SizedBox(height: 10),
        
        // Botón de envío
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: MyButton(text: 'Send', altura: 60, ancho: 450)
        ),
      ],
    ),
  ),
),
        ],
      ),
    ));
  }
}
