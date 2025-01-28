```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // Process the JSON response safely: Check for null values and handle them appropriately.
      final data = jsonData['key'] ?? 'Default value'; // Handle the case where 'key' might be missing.
      print('Data received: $data');
    } else {
      // Specific error handling for HTTP status codes
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('JSON decoding error: $e');
    // Handle JSON decoding error separately. 
  } on SocketException catch (e) {
      print('Network Error: $e');
      //Handle network errors
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```