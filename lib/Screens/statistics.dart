import 'package:flutter/material.dart';




class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

ValueNotifier kj = ValueNotifier(0);

class _StatisticsState extends State<Statistics> {
  @override


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: kj,
          builder: (BuildContext context, dynamic value, Widget? child) {
           
            
            return custom();
          },
        ),
      ),
    );
  }

  CustomScrollView custom() {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
        child: SizedBox(height: 160, child: _head()),
      ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: 
            Row(
              children: [

                const SizedBox(height: 60),
                // Círculos en la parte izquierda
                _buildCircle('images/coco.png', 'Dried fruit'),
                const SizedBox(width: 50),
                _buildCircle('images/nuez.png', 'Nuts'),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    // Aquí puedes agregar lógica para mostrar un lugar para escribir
                  },
                  child: const Icon(
                    Icons.search_outlined,
                    size: 50,
                    color: Color.fromARGB(255, 167, 167, 167),
                  ),
                ),
              ],
            ),
          ),
        ),

// Card en forma de circulo

        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(
                width: 34,
                height: 78,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 370,
                      height: 300,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 300,
                            height: 300,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 241, 164, 91),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dried frut',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color.fromARGB(255, 245, 244, 244),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  '\$19.99',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: const Color.fromARGB(255, 245, 244, 244),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Icon(
                                        Icons.star,
                                        color: Color.fromARGB(255, 245, 244, 244),
                                        size: 20,
                                      ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Container(
                                  width: 150,
                                  height: 50,
                                  child: ElevatedButton.icon(
                                    onPressed: () {
                                      // Lógica para agregar al carrito
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                    icon: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black,
                                    ),
                                    label: Expanded(
                                      child: Center(
                                        child: Text(
                                          'Add to Cart',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: -60, // Ajusta la posición de la imagen según tus necesidades
                            child: Image.asset(
                              'images/example.png', // Ruta correcta de tu imagen en assets
                              width: 220, // Ajusta el tamaño de la imagen según tus necesidades
                              height: 220, // Ajusta el tamaño de la imagen según tus necesidades
                              fit: BoxFit.contain
                            
                            ),
                          ),

                          Positioned(
                            right: 10, // Ajusta la posición de la imagen según tus necesidades
                            child: Image.asset(
                              'images/heart.png', // Ruta correcta de tu imagen en assets
                              width: 50, // Ajusta el tamaño de la imagen según tus necesidades
                              height: 50, // Ajusta el tamaño de la imagen según tus necesidades
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Aqui van a estar los circulos del footer los 
      
         SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        // ... Tu código anterior ...

        // Agrega un SizedBox para ajustar la distancia entre la tarjeta y los círculos
        const SizedBox(height: 60),

        // Fila de círculos
        Row(
          children: [
            _buildCircleFruit('images/mango_b.png', ''),
            const SizedBox(width: 40), // Ajusta la distancia entre los círculos
            _buildCircleFruit('images/nuts_b.png', ''),
            const SizedBox(width: 40), // Ajusta la distancia entre los círculos
            _buildCircleFruit('images/fruits_b.png', ''),
          ],
        ),
      ],
    ),
  ),
),

      ],
    );
  }

  //Head es donden estan los iconos del hamburguer button y los textos asi como el icono de home  ue todavía no esta mapeado
Widget _head() {
  return const Stack(
    children: [
      Positioned(
        top: 20,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),  // Agregado espacio entre el icono y el primer texto
            Icon(
              Icons.menu_outlined,
              size: 40,
              color: Color.fromARGB(255, 160, 159, 158),
            ),
            SizedBox(height: 10),  // Agregado espacio entre el primer y segundo texto
            Text(
              'Hi, Helen',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 15),  // Agregado espacio entre el segundo texto y el tercero
            Text(
              "What's today's taste? 😋",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      Positioned(
        top: 20,
        right: 20,
        child: Icon(
          Icons.house_outlined,  // Cambiado a un icono de configuración diferente
          size: 40,
          color: Color.fromARGB(255, 160, 159, 158),
        ),
      ),
    ],
  );
}

Widget _buildCircle(String imagePath, String label) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(imagePath),
      ),
      const SizedBox(height: 10),
      Text(
        label,
        style: const TextStyle(fontSize: 12),
      ),
    ],
  );
}

Widget _buildCircleFruit(String imagePath, String label) {
  return Column(
    children: [
      CircleAvatar(
        radius: 35,
        backgroundColor: Color.fromARGB(0, 43, 38, 32),
        backgroundImage: AssetImage(
          imagePath),
      ),
       const SizedBox(height: 10),
      Text(
        label,
        style: const TextStyle(fontSize: 12),
      ),
    ],
  );
}


}