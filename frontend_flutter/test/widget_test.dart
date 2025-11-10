import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_flutter/main.dart';

void main() {
  testWidgets('App loads with bottom navigation destinations', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeExplorerApp());
    await tester.pumpAndSettle();

    expect(find.byType(NavigationBar), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);
  });

  testWidgets('Home screen shows list or loader', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeExplorerApp());

    // At least a loader should appear then settle to list.
    expect(find.byType(CircularProgressIndicator), findsWidgets);
  });
}
