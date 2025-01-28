# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in Dart asynchronous programming: unhandled exceptions during network requests and JSON decoding.  The example shows how to properly handle these exceptions using `try-catch` blocks and the `rethrow` keyword for better error management.

## Bug Description

The provided Dart code attempts to fetch data from a remote API.  Without proper error handling, network errors or JSON decoding issues can lead to application crashes. The `bug.dart` file presents code vulnerable to such errors.

## Solution

The `bugSolution.dart` file demonstrates improved error handling. It gracefully handles potential `Exception`s and provides more informative error messages to the user or logs for debugging.