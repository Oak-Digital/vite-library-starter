{pkgs, ...}: {
  packages = with pkgs; [
    nodejs-18_x
    nodePackages.pnpm
    nodePackages.typescript-language-server
    nodePackages.prettier
  ];

  languages.typescript.enable = true;

  pre-commit.hooks = {
    eslint.enable = true;
    prettier.enable = true;
    # editorconfig-checker.enable = true;
  };
}
