import 'package:api_repository/api_repository.dart';
import 'package:instagram/app/view/app.dart';
import 'package:instagram/bootstrap.dart';

void main() {
  const apiRepository = ApiRepository();
  bootstrap(
    () => const App(
      apiRepository: apiRepository,
    ),
  );
}
