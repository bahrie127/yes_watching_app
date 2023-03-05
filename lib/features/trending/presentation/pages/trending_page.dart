import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yes_watching_app/common/constants.dart';
import 'package:yes_watching_app/features/trending/presentation/widgets/trending_item_widget.dart';

import '../bloc/trending_bloc.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({super.key});

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {
  int _selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Trending Everyday'),
      ),
      body: SafeArea(
        child: BlocBuilder<TrendingBloc, TrendingState>(
          builder: (context, state) {
            if (state is TrendingLoaded) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return TrendingItemWidget(item: state.trendings[index]);
                },
                itemCount: state.trendings.length,
              );
            }
            if (state is TrendingLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is TrendingFailed) {
              return Center(
                child: Text(state.message),
              );
            }

            return const Center(
              child: Text('No Data'),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectIndex,
        unselectedItemColor: Colors.black,
        selectedItemColor: titleColor,
        iconSize: 24,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        onTap: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home_filled,
              color: titleColor,
            ),
            icon: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            label: 'Tranding',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.movie_creation_outlined,
              color: titleColor,
            ),
            icon: Icon(
              Icons.movie_creation_outlined,
              color: Colors.black,
            ),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.tv_outlined,
              color: titleColor,
            ),
            icon: Icon(
              Icons.tv_outlined,
              color: Colors.black,
            ),
            label: 'TV Series',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person_3_outlined,
              color: titleColor,
            ),
            icon: Icon(
              Icons.person_3_outlined,
              color: Colors.black,
            ),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}
