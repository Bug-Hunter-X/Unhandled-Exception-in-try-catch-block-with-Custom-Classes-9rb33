# Unhandled Exception in try-catch block with Custom Classes

This repository demonstrates a common error in Dart where an unhandled exception occurs even within a `try-catch` block when dealing with custom classes. The problem arises from a mismatch in the exception types between the thrown and caught exceptions.

## Bug Description:
The code throws a custom exception of type `MyException`. The `catch` block tries to handle exceptions of type `Exception`. The issue is that `MyException` does not inherit from `Exception`, which leads to the unhandled exception.