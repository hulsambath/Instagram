import 'package:api_repository/api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram/todos/cubit/todos_cubit.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: const TodosView(),
      create: (context) =>
          TodosCubit(apirepository: context.read<ApiRepository>()),
    );
  }
}

class TodosView extends StatefulWidget {
  const TodosView({super.key});

  @override
  State<TodosView> createState() => _TodosViewState();
}

class _TodosViewState extends State<TodosView> {
  @override
  void initState() {
    super.initState();
    context.read<TodosCubit>().fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    final todos = context.select((TodosCubit cubit) => cubit.state);
    return BlocProvider(
      create: (context) => TodosCubit(
        apirepository: context.read<ApiRepository>(),
      ),
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, int index) {
                  final todo = todos[index];
                  return Text(
                    todo,
                    style: Theme.of(context).textTheme.headlineLarge,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
