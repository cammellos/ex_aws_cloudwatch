use Mix.Config

if System.get_env("USE_LOCALSTACK") not in [nil, "", "0", "no"] do

  # see docker-compose.yml
  # see https://github.com/localstack/localstack
  config :ex_aws, :monitoring,
         scheme: (if System.get_env("USE_SSL"), do: "https", else: "http"),
         host: System.get_env("HOSTNAME") || "localhost",
         port: 4582
end
