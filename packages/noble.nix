{
  noble-src,
  cosmosLib,
}:
cosmosLib.mkCosmosGoApp {
  goVersion = "1.23";
  name = "noble";
  version = "v9.0.2";
  src = noble-src;
  rev = noble-src.rev;
  vendorHash = "sha256-yxvydwiHRyY0ZjrSLXiVGJSdeyugXsqtDiYP7/PvcKc=";
  engine = "cometbft/cometbft";
  excludedPackages = ["./e2e"];
}
