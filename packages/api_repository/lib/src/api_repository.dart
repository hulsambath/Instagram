/// {@template api_repository}
/// A fake API repository
/// {@endtemplate}
class ApiRepository {
  /// {@macro api_repository}
  const ApiRepository();

  // ignore: public_member_api_docs
  List<String> fetchTodos() => ['Do homework', 'Go to shop', 'Cook the dinner'];
}
