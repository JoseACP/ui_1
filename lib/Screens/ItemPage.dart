import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 238, 125, 50),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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

              Container(
                padding: EdgeInsets.all(15),
                height: 210,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: 
                  DecorationImage(
                    image:AssetImage('images/example.png'),
                  ),
                ),

              ),

              Container(  
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,  
                  children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                    'Spicy friut',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 15),
                   Text(
                    'Dried fruit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      
                      Icon(Icons.star, size: 25, color: Colors.white),
                      Icon(Icons.star, size: 25, color: Colors.white),
                      Icon(Icons.star, size: 25, color: Colors.white),
                      Icon(Icons.star, size: 25, color: Colors.white),
                      Icon(Icons.star, size: 25, color: Colors.white),
                    ],
                  ),
                    ],
                   )
                  ],
                ),),

              

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
                height: 80,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)
                  ),
                ),
                child: Row(children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(width: 10), // Espaciado entre el icono y el texto
                  Text(
                    'Car',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 25,
                      fontWeight: FontWeight.w200,
                      ),
                  ),
                ]),
              )
            
            ]
            ),
        ),
        ),
    );
  }
}