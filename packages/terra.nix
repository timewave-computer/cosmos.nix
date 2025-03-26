{
  terra-src,
  cosmosLib,
  libwasmvm_1_5_2,
}:
cosmosLib.mkCosmosGoApp {
  # nixpkgs latest go version v1.22 is v1.22.5 but Neutron v4.2.2 requires
  # v1.22.6 or more so v1.23 is used instead
  goVersion = "1.21";
  name = "terra";
  version = "v2.12.4";
  src = terra-src;
  rev = terra-src.rev;
  vendorHash = "sha256-2B34dOWk4tH1YffvQ2w9ztNAWGgaI90h7CYXJYDqkCc=";
  engine = "cometbft/cometbft";
  preFixup = ''
    ${cosmosLib.wasmdPreFixupPhase libwasmvm_1_5_2 "terrad"}
  '';
  buildInputs = [libwasmvm_1_5_2];
  excludedPackages = ["./interchaintest"];
}
