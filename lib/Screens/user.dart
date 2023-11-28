import 'package:flutter/material.dart'; 
import 'package:ui_1/services/firebase_service.dart';
import 'package:flutter/cupertino.dart';




class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
   String? stepsFromFirebase;

   @override
  void initState() {
    super.initState();

    // Llama a getSteps() para obtener los datos de Firebase
    getSteps().then((steps) {
      setState(() {
        stepsFromFirebase = steps; // Asigna los datos de Firebase a la variable
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(238, 238, 125, 50),
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(child: Stack(
              children: [
                Column(
                  
                  children: [
                    Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),


                  Container(
                    height: 250,
                    margin: EdgeInsets.only(top: 5, bottom: .1),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      ),
                    ),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Contenido de la tarjeta aquí //
                        Padding(
                          
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Quantity (300gr)',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                              Padding(padding: const EdgeInsets.only(top: 30),
                              child: Row(
                                children: [
                                  Text(
                                    "\$",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    child: Text(
                                      "19.99",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              ),
                            ],
                            ),
                        ),
                        Row(
                          children: [
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 250, 246, 240),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow:[
                                        BoxShadow(
                                          color: const Color.fromARGB(255, 20, 1, 1).withOpacity(0.5),
                                          spreadRadius: .5,
                                          blurRadius: 1,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                    ),
                                    child: Icon(
                                        CupertinoIcons.minus,
                                      )
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 250, 246, 240),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow:[
                                        BoxShadow(
                                          color: const Color.fromARGB(255, 20, 1, 1).withOpacity(0.5),
                                          spreadRadius: .5,
                                          blurRadius: 1,
                                          offset: Offset(0, 3),
                                        )
                                      ],
                                    ),
                                    child: Icon(
                                        CupertinoIcons.plus,
                                      )
                                  ),
                                ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          children: [
                            Container(
                              width: 300,
                              height: 50,
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  // Lógica para agregar al carrito
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(235, 224, 151, 41),
                                  onPrimary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                icon:
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  
                                ),
                                label:
                                Text(
                                      'Add to Cart',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: const Color.fromARGB(255, 248, 248, 248),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      
                                    ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                    
                  ),

                    Container(
                    width: double.infinity,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Título
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: Colors.white,
                                size: 31,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  'Cart',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20), // Espacio entre el título y las secciones de productos

                          // Primera sección de productos
                          buildProductSection('images/fruits_b.png', 'amlo', '\$19.99', 3),

                          // Segunda sección de productos
                          buildProductSection('images/mango_b.png', 'Guayando', '\$29.99', 5),

                          // Tercera sección de productos
                          buildProductSection('images/nuts_b.png', 'babo', '\$39.99', 2),

                          buildProductSection('images/yo.jpg', 'babo', '\$39.99', 2),

                          // Puedes agregar más secciones de productos aquí según sea necesario
                        ],
                      ),
                    ),
                  ),

                  ],
                ),
              ],
            )),
              ),  
            ],
          )),
    );
  }
  Widget buildProductSection(String imagePath, String productName, String price, int quantity) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Icono del producto
        Image.asset(
          imagePath,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),

        // Detalles del producto
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nombre del producto
                Text(
                  productName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),

                // Precio del producto
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Cantidad del producto
        Text(
          'x$quantity',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}


}