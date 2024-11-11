{ pkgs, lib, config, inputs, ... }:

{
  dotenv.enable = true;

  services.minio = {
    enable = true;
    accessKey = config.env.S3_AK;
    secretKey = config.env.S3_SK;
  };
  # ^ Issue
  # This works when in the 'submodule' dir, but not when in the root dir.
}
