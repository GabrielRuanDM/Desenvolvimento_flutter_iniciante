import 'package:desenvolvimento_flutter_iniciante/extensions/string_extensions.dart';
import 'package:desenvolvimento_flutter_iniciante/models/pessoa.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/custom_tile.dart';
import 'package:desenvolvimento_flutter_iniciante/widgets/pessoa_dialog.dart';
import 'package:flutter/material.dart';

class CustomPessoaTile extends StatelessWidget {
  final Pessoa pessoa;
  const CustomPessoaTile({super.key, required this.pessoa});

  @override
  Widget build(BuildContext context) {
    return CustomTile(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return PessoaDialog(pessoa: pessoa);
          },
        );
      },
      leading: Text('Id: ${pessoa.id}'),
      color: Colors.lightBlue,
      title: Text(pessoa.nome, style: TextStyle(fontSize: 20)),
      subTitle: Text("Peso: ${pessoa.peso.paraPeso()}"),
      trailing: Text("Altura: ${pessoa.altura} cm"),
    );
  }
}
