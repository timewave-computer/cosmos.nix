{
  inputs,
  mkCosmosGoApp,
  libwasmvm_1_5_0,
  libwasmvm_2_0_0,
  libwasmvm_2_1_2,
  cosmosLib,
}: let
  gaias = with inputs;
    builtins.mapAttrs (_: mkCosmosGoApp)
    {
      gaia5 = {
        name = "gaia";
        vendorHash = "sha256-V0DMuwKeCYpVlzF9g3cQD6YViJZQZeoszxbUqrUyQn4=";
        version = "v5.0.6";
        src = gaia5-src;
        rev = gaia5-src.rev;
        tags = ["netgo"];
        engine = "tendermint/tendermint";
      };

      gaia6 = {
        name = "gaia";
        vendorHash = "sha256-KeF3gO5sUJEXWqb6EVYBYXpVBfhvyXZ4f03l63wYTjE=";
        version = "v6.0.4";
        src = gaia6-src;
        rev = gaia6-src.rev;
        tags = ["netgo"];
        engine = "tendermint/tendermint";
      };

      gaia6-ordered = {
        name = "gaia";
        vendorHash = "sha256-4gBFn+zY3JK2xGKdIlYgRbK3WWjmtKFdEaUc1+nT4zw=";
        version = "v6.0.4-ordered";
        src = gaia6-ordered-src;
        rev = gaia6-ordered-src.rev;
        tags = ["netgo"];
        engine = "tendermint/tendermint";
      };

      gaia7 = {
        name = "gaia";
        vendorHash = "sha256-bNeSSZ1n1fEvO9ITGGJzsc+S2QE7EoB703mPHzrEqAg=";
        version = "v7.1.0";
        src = gaia7-src;
        rev = gaia7-src.rev;
        tags = ["netgo"];
        engine = "tendermint/tendermint";

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia8 = {
        name = "gaia";
        vendorHash = "sha256-w3MLjxXzKytMxCN9Q9RPeeXq7ijDQXoH0d+ti5FLMtA=";
        version = "v8.0.1";
        src = gaia8-src;
        rev = gaia8-src.rev;
        tags = ["netgo"];
        engine = "tendermint/tendermint";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia9 = {
        name = "gaia";
        vendorHash = "sha256-W1pKtrWfXe0pdO7ntcjFbDa0LTpD91yI2mUMXBiDo1w=";
        version = "v9.0.3";
        src = gaia9-src;
        rev = gaia9-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia10 = {
        name = "gaia";
        vendorHash = "sha256-W0+XQyXDvwKq7iS9GhW/UK0/4D32zK26u0abGNPsdZc=";
        version = "v10.0.2";
        src = gaia10-src;
        rev = gaia10-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia11 = {
        name = "gaia";
        vendorHash = "sha256-05S5mmex/IReEBfo0BgB/99NWY7tGM2wWCi0qTa50oM=";
        version = "v11.0.0";
        src = gaia11-src;
        rev = gaia11-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia12 = {
        name = "gaia";
        vendorHash = "sha256-yULjy7lBfxgm0rZjqwIAu99TYBnW4O29mz7u+Bnu6gY=";
        version = "v12.0.0";
        src = gaia12-src;
        rev = gaia12-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia13 = {
        name = "gaia";
        vendorHash = "sha256-SQF6YNVVOfpL55Uc4LIzo2jv/cdKp8hHUeqcpc/dBEc=";
        version = "v13.0.2";
        src = gaia13-src;
        rev = gaia13-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia14 = {
        name = "gaia";
        vendorHash = "sha256-7hmP0Uc4HHW7voy3DRMkpAXifon/qnaaT6jaUf/h8HU=";
        version = "v14.0.0";
        src = gaia14-src;
        rev = gaia14-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia15 = {
        name = "gaia";
        vendorHash = "sha256-3n/tBOEwM9gvrLikJTJN7vzwVL9td+0+2yqgS7jzRd0=";
        version = "v15.2.0";
        src = gaia15-src;
        rev = gaia15-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia17 = {
        name = "gaia";
        vendorHash = "sha256-gDzq+Jfs5EyH0tbeBzkz3xR75t324yaWLRhw59U8aRI=";
        version = "v17.2.0";
        goVersion = "1.21";
        src = gaia17-src;
        rev = gaia17-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia18 = {
        name = "gaia";
        vendorHash = "sha256-+vTP15mftPKWMkE4yI3avI+jQt917YCYGdUt29E1lYs=";
        version = "v18.1.0";
        goVersion = "1.22";
        src = gaia18-src;
        rev = gaia18-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        preFixup = ''
          ${cosmosLib.wasmdPreFixupPhase libwasmvm_1_5_0 "gaiad"}
        '';
        buildInputs = [libwasmvm_1_5_0];

        # Tests have to be disabled because they require Docker to run
        doCheck = false;
      };

      gaia19 = {
        name = "gaia";
        vendorHash = "sha256-+9Q5Zcg/WtUPp1AbU9sGh9pxALjJesQ+m2sd4WQYOEs=";
        version = "v19.1.0";
        # nixpkgs latest go version v1.22 is v1.22.5 but Gaia v19.1.0 requires
        # v1.22.6 or more so v1.23 is used instead
        goVersion = "1.23";
        src = gaia19-src;
        rev = gaia19-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        preFixup = ''
          ${cosmosLib.wasmdPreFixupPhase libwasmvm_2_0_0 "gaiad"}
        '';
        buildInputs = [libwasmvm_2_0_0];

        # Tests have to be disabled because they require Docker to run
        doCheck = false;

        excludedPackages = ["tests/interchain"];
      };

      gaia20 = {
        name = "gaia";
        vendorHash = "sha256-1WErtwmYr3AgY1lFpiFYrosU4leJ+ZC13Vbk8vwmmg8=";
        version = "v20.0.0";
        # nixpkgs latest go version v1.22 is v1.22.5 but Gaia v20.0.0 requires
        # v1.22.6 or more so v1.23 is used instead
        goVersion = "1.23";
        src = gaia20-src;
        rev = gaia20-src.rev;
        tags = ["netgo"];
        engine = "cometbft/cometbft";
        proxyVendor = true;

        preFixup = ''
          ${cosmosLib.wasmdPreFixupPhase libwasmvm_2_1_2 "gaiad"}
        '';
        buildInputs = [libwasmvm_2_1_2];

        # Tests have to be disabled because they require Docker to run
        doCheck = false;

        excludedPackages = ["tests/interchain"];
      };
    };
in
  gaias // {gaia = gaias.gaia20;}
