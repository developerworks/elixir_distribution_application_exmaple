# ElixirDistributionApplicationExmaple

This is an example for demonstrate how to write a distributed application in elixir.

## First step

Start the following three node in 30 seconds.

start node `a@192.168.8.104`

```
iex --name 'a@192.168.8.104' --erl "-config a" -pa "ebin/" -S mix
iex --name a@192.168.8.104 -pa _build/dev/lib/distro/ebin/ --app elixir_distribution_application_exmaple --erl "-config config/a"
```

start node `b@192.168.8.104`

```
iex --name 'b@192.168.8.104' --erl "-config b" -pa "ebin/" -S mix
iex --name b@192.168.8.104 -pa _build/dev/lib/distro/ebin/ --app elixir_distribution_application_exmaple --erl "-config config/b"

```

start node `c@192.168.8.104`

```
iex --name 'c@192.168.8.104' --erl "-config c" -pa "ebin/" -S mix
iex --name c@192.168.8.104 -pa _build/dev/lib/distro/ebin/ --app elixir_distribution_application_exmaple --erl "-config config/c"

```


iex --name abc@192.168.8.104 -pa _build/dev/lib/distro/ebin/ --app distro --erl "-config config/abc"
iex --name bcd@192.168.8.104 -pa _build/dev/lib/distro/ebin/ --app distro --erl "-config config/bcd"
iex --name def@192.168.8.104 -pa _build/dev/lib/distro/ebin/ --app distro --erl "-config config/def"

## Second step

1. Ctrl + C twice terminate the node a@192.168.8.104

  ElixirDistributionApplicationExmaple application restarted on node `b@192.168.8.104`

2. Run the following command to restart the app on node `a@192.168.8.104`

```
iex --name 'a@192.168.8.104' --erl "-config a" -pa "ebin/" -S mix
```


