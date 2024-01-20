defmodule Testlab.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      TestlabWeb.Telemetry,
      Testlab.Repo,
      {DNSCluster, query: Application.get_env(:testlab, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Testlab.PubSub},
      # Start a worker by calling: Testlab.Worker.start_link(arg)
      # {Testlab.Worker, arg},
      # Start to serve requests, typically the last entry
      TestlabWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Testlab.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TestlabWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
