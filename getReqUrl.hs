getRequestUrl host apikey resource id = host ++
  "/" ++ resource ++ "/" ++ id ++ "?token-" ++ apikey


getHostRequestUrl host = (\apikey resource id ->
  getRequestUrl host apikey resource id)

getApiRequestBuilder hostBuilder apikey resource = (\id ->
  hostBuilder apikey resource id)

exampleUrlBuilder = getHostRequestUrl "http://example.com"


--必要なパラメータの数よりも少ない引数を使って関数を呼び出すと、残りの引数を待機する関数。
--部分適用

exampleUrlBuilder = getRequestUrl "http://example.com" "1337gh" "books"