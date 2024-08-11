import 'package:api_repository/api_repository.dart';
import 'package:instagram/app/view/app.dart';
import 'package:instagram/bootstrap.dart';
import 'package:instagram/firebase_options_prod.dart';

void main() {
  const apiRepository = ApiRepository();
  
  bootstrap(
    (powerSyncRepository) {
      return const App(apiRepository: apiRepository);
    },
    options: DefaultFirebaseOptions.currentPlatform,
    env: null,
  );
}
