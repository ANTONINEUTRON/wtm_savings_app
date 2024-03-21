import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wtm_savings_app/features/home/bloc/home_state.dart';
import '../../invest/widgets/invest_details_card.dart';
import '../../savings/widgets/saving_details_card.dart';
import '../bloc/home_bloc.dart';

class UserBalanceDetails extends StatefulWidget {
  const UserBalanceDetails({
    super.key,
  });

  @override
  State<UserBalanceDetails> createState() => _UserBalanceDetailsState();
}

class _UserBalanceDetailsState extends State<UserBalanceDetails> with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController  = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = context.read<HomeBloc>();
    var homestate = context.watch<HomeBloc>().state;
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: PageView(
            onPageChanged: (index){
              setState(() {
                tabController.index = index;
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SavingDetailsCard(
                  balance: "${homestate.userModel?.balance}",
                  onClick: () {
                    homeBloc.updateTabIndex(1);
                  },
                  topRightWidget: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("View savings"),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 8
                        )
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: InvestDetailsCard(),
              ),
            ],
          ),
        ),
        TabPageSelector(
          controller: tabController,
          selectedColor: Colors.blue,
          color: Colors.white,
        ),
      ],
    );
  }
}