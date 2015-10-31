# ElixirDistributionApplicationExmaple

This is an example for demonstrate how to write a distributed application in elixir.

## First step

Start the following three node in 30 seconds.

start node `a@192.168.8.104`

```
iex --name 'a@192.168.8.104' --erl "-config a" -pa "ebin/" -S mix
```

start node `b@192.168.8.104`

```
iex --name 'b@192.168.8.104' --erl "-config b" -pa "ebin/" -S mix
```

start node `c@192.168.8.104`

```
iex --name 'c@192.168.8.104' --erl "-config c" -pa "ebin/" -S mix
```


## Second step

1. Ctrl + C twice terminate the node a@192.168.8.104

  ElixirDistributionApplicationExmaple application restarted on node `b@192.168.8.104`

2. Run the following command to restart the app on node `a@192.168.8.104`

```
iex --name 'a@192.168.8.104' --erl "-config a" -pa "ebin/" -S mix
```


