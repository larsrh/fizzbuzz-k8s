# fizzbuzz-k8s
FizzBuzz on k8s using ingress rules, because why not?

## Usage

Deploy all resources with `kubectl apply -f .`.

Try it out:

```
$ for i in `seq 1 20`; do curl -s http://<endpoint>/$i | jq .args.response; done
"1"
"2"
"fizz"
"4"
"buzz"
"fizz"
"7"
"8"
"fizz"
"buzz"
"11"
"fizz"
"13"
"14"
"fizzbuzz"
"16"
"17"
"fizz"
"19"
"buzz"
```

## Why?

Because we can.

## Credits

* https://stackoverflow.com/a/24195550/4776939
* http://blogs.perl.org/users/mauke/2017/08/fizzbuzz.html
* https://regexr.com/

No credits to RE2 because it doesn't accept look-ahead assertions, even though Nginx supports them.
