// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:yes_watching_app/features/tranding/presentation/bloc/tranding_bloc.dart';
// import 'package:yes_watching_app/features/tranding/presentation/widgets/tranding_list_widget.dart';

// class MockTrendingBloc extends MockBloc<TrandingEvent, TrandingState>
//     implements TrandingBloc {}

// void main() {
//   late MockTrendingBloc mock;
//   setUp(() => mock = MockTrendingBloc());

//   testWidgets('tranding list widget ...', (tester) async {
//     when(mock.add(GetTradingAllEvent()))
//         .thenAnswer((realInvocation) => GetTrandingAllLoading());
//     await tester.pumpWidget(BlocProvider.value(
//       value: mock,
//       child: TrandingListWidget(),
//     ));
//     expect(find.byType(CircularProgressIndicator), findsOneWidget);
//   });
// }
