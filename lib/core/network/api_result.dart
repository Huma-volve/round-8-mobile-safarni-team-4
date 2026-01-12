abstract class ApiResult<T> {
const ApiResult();
factory ApiResult.success(T data) => Success(data);
}

class Success<T> extends ApiResult<T> {
 final T data;

 const Success(this.data);
}

class Error<T> extends ApiResult<T> {
  Object error;

  Error({required this.error});
}