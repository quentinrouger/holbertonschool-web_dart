void outer(String name, String id) {
  List<String> nameParts = name.split(" ");
  String firstName = nameParts[0];
  String lastName = nameParts[1];
  
  String initial = lastName[0];
  
  String formattedName = "$initial.$firstName";
  void inner() {
    print("Hello Agent $formattedName your id is $id");
  }

  inner();
}
