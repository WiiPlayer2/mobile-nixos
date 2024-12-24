{ config, lib, pkgs, ... }:

{
  imports = [
    ../families/sm7150-mainline
  ];

  mobile.device.name = "samsung-a71";
  mobile.device.identity = {
    name = "Samsung Galaxy A71";
    manufacturer = "Samsung";
  };

  mobile.device.supportLevel = "best-effort";

  mobile.hardware = {
    ram = 1024 * 6;
    screen = {
      width = 1080; height = 2400;
    };
  };

  mobile.device.firmware = pkgs.callPackage ./firmware {};

  mobile.system.android.device_name = "SamsungGalaxyA715F"; # TODO: what?
}
