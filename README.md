# devenv-env-loading-issue

The submodule defines a minio service that's supposed to be initialized with some variables from the `.env` file in that submodule.

The root module contains a `devenv.nix` as well, which in theory enables us to load and start all services for all submodules.

However, the `devenv.nix` files seem to be merged on the top-level while the `.env` files are ignored.
