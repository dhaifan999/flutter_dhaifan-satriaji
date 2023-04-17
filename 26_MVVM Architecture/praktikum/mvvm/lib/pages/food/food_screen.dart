import 'package:assets/pages/food/food_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FoodScreenState createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FoodViewModel>(context, listen: false);
      await viewModel.getAllFoods();
    });
  }

  Widget listView(FoodViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.foods.length,
      itemBuilder: (context, index) {
        final food = viewModel.foods[index];
        return ListTile(
          title: Text(food.name),
        );
      },
    );
  }

  Widget body(FoodViewModel viewModel) {
    final isLoading = viewModel.state == FoodViewState.loading;
    final isError = viewModel.state == FoodViewState.error;

    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (isError) {
      return const Center(child: Text('Failed to fetch data.'));
    }

    return listView(viewModel);
  }

  @override
  Widget build(BuildContext context) {
    FoodViewModel viewModel = Provider.of<FoodViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Food List'),
        centerTitle: true,
      ),
      body: body(viewModel),
    );
  }
}
