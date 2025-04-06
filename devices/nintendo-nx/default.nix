{ config, lib, pkgs, ... }:
{
  mobile.device.name = "Nintendo Switch";
  mobile.hardware = {
    soc = "generic-aarch64";
  };

  mobile.system.type = "u-boot";

  mobile.boot.stage-1 = {
    kernel = {
      useNixOSKernel = lib.mkDefault true;
    };
  };
}
