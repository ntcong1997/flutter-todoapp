class Result<T> {
  Result._();

  factory Result.success(T data) = Success(data);
}

class Success<T> extends Result<T> {
  Success(T data) : super._();
}