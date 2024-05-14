import 'package:flutter/material.dart';

class FavoritosBox extends StatelessWidget {
  const FavoritosBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35, // altura da caixa
      width: 60, // largura da caixa
      decoration: BoxDecoration(
        color: Colors.blueGrey[700], // cor da caixa
        borderRadius: BorderRadius.circular(7), // borda arredondada
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star_rounded, // ícone de estrela
            color: Colors.yellow, // cor do ícone
            size: 20.0,
          ),
          Text(
            'Favoritos',
            style: TextStyle(
              color: Colors.white, // cor do texto
              fontSize: 8, // tamanho do texto
            ),
          ),
        ],
      ),
    );
  }
}
