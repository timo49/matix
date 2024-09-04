{ config, pkgs, ... }:

{
# Enable the OpenSSH daemon.
  services.openssh.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    wireplumber = {
      enable = true;
      extraConfig = {
        "10-disable-camera" = {
          "wireplumber.profiles" = {
            main."monitor.libcamera" = "disabled";
	  };
	};
      };
    };
  };
}
