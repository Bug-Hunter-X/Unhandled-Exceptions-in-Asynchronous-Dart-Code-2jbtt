```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = json.decode(response.body);
      // Access data using jsonData['key']
    } else {
      // Handle error status codes
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (network errors, JSON decoding errors, etc.)
    print('Error fetching data: $e');
    rethrow; // Re-throw the exception to be handled higher up in the call stack.
  }
}
```