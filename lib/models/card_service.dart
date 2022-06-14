import 'package:flutter/material.dart';

class CardService extends StatelessWidget {
  const CardService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> service = <String>['Barba', 'Cabelo', 'Cabelo + Barba'];
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: service.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.white,
          child: Column(
            children: [
              Text(
                '${service[index]}',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Image.asset('img/barba.jpg'),
              Text(
                'Na tesoura ou na máquina',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                'R\$25,00',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
