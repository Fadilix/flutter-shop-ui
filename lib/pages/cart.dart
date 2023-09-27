import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ui/components/row.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                    const SizedBox(width: 100),
                    Text(
                      "Your cart",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 330,
                  child: ListView(
                    shrinkWrap: true,
                    children: const [
                      RRow(
                        title: "CLUB C 85 LOONEY\n TUNES",
                        image: "assets/nikehero.png",
                        price: 1134.96,
                      ),
                      SizedBox(height: 20),
                      RRow(
                        title: "NIKE NUNCHAKU",
                        image: "assets/nikee.png",
                        price: 699.99,
                      ),
                      SizedBox(height: 20),
                      RRow(
                        title: "Jordan",
                        image: "assets/jordan.png",
                        price: 476.49,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 80),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal Items (3)",
                          style: GoogleFonts.poppins(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          "\$2.750,00",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Fee",
                          style: GoogleFonts.poppins(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          "\$2,00",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: const Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: GoogleFonts.poppins(
                            color: Colors.grey[700],
                          ),
                        ),
                        Text(
                          "\$2.752,00",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    GestureDetector(
                      onTap: () {
                        print("clicked");
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            "Go to Payment",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
