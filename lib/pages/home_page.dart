import 'package:appBarbearia/widgtes/add_event.dart';
import 'package:flutter/material.dart';
import 'package:appBarbearia/helpers/utils.dart';
import 'package:appBarbearia/models/category.dart';
import 'package:appBarbearia/pages/calendario_page.dart';
import 'package:appBarbearia/widgtes/fab_menu_button.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Category> categories = Utils.getMockedCategories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Darbe\'s Barber Shop',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Image.asset('img/logoBarber.png', height: 200, width: 200),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Selecione um serviço:',
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return GestureDetector(
                        onTap: (() {
                          //criar classe para salvar o serviço omo um evento no calendário
                          add_event();
                        }),
                        child: Container(
                          margin: EdgeInsets.all(30),
                          height: 150,
                          child: Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                          categories[index].imgName!)),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 20, bottom: 10),
                                    child: Container(
                                      width: 180,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            categories[index].name!,
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            categories[index].descricao!,
                                          ),
                                          Text(
                                            categories[index].preco!,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
      floatingActionButton: FabMenuButton(),
    );
  }

  onCardClick() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => CalendarioPage(
                  title: 'Agendamento',
                )));
  }

  add_event() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddEvent(),
        ));
  }
}
