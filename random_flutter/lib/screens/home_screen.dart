import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:random_flutter/bloc/home_bloc.dart';
import 'package:random_flutter/resources/app_colors.dart';
import 'package:random_flutter/sevices/data_service.dart';

class HomePage extends StatelessWidget {
  final HomeBloc homeBloc;

  HomePage({this.homeBloc});

  static Widget view() {
    //* Consumes [DataService] object provided above MaterialApp
    //* So that we can feed this [DataService] object to [HomeBloc]
    return Consumer<DataService>(builder: (
      BuildContext context,
      DataService service,
      Widget child,
    ) {
      return Provider<HomeBloc>(
        create: (BuildContext context) => HomeBloc(service: service),
        dispose: (BuildContext context, HomeBloc _) => _.dispose(),
        child: Consumer(builder: (
          BuildContext _,
          HomeBloc bloc,
          Widget child,
        ) {
          return HomePage(
            homeBloc: bloc,
          );
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Color>(
      stream: homeBloc.colorStream,
      initialData: AppColors.salmon,
      builder: (BuildContext context, AsyncSnapshot<Color> snapshot) {
        return Scaffold(
          //backgroundColor: snapshot.data,
          body: Center(
            child: Container(
              child: SvgPicture.asset("assets/time.svg",
               color: snapshot.data,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await homeBloc.getColorFromApiResponse();
            },
            child: Container(
              child: Icon(Icons.refresh),
            ),
          ),
        );
      },
    );
  }
}
