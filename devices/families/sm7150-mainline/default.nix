{ lib, config, ... }:
{
  mobile.hardware = {
    soc = "qualcomm-sm7150";
  };

  mobile.system.type = "android";
  mobile.system.android = {
    ab_partitions = false;
    bootimg.flash = {
      offset_base = "0x00000000";
      offset_kernel = "0x00008000";
      offset_ramdisk = "0x01000000";
      offset_second = "0x00000000";
      offset_tags = "0x00000100";
      pagesize = "4096";
    };
    appendDTB = lib.mkDefault [
      "dtbs/qcom/sm7150-${config.mobile.device.name}.dtb"
    ];
  };
}
