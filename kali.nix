{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    aircrack-ng
    bind
    jwhois #| whois
    thc-hydra
    nmap
  ];
}
