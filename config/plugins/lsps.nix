# LSP setup
{ pkgs, inputs, ... }:
{
  extraPackages = with pkgs; [
    rust-analyzer
    lua-language-server
  ];

  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      bashls.enable = true;
      clangd.enable = true;
      pyright.enable = true;
      nixd.enable = true;
      nushell.enable = true;
      svelte.enable = true;
      tailwindcss.enable = true;
      # typst-lsp.enable = true;
      marksman.enable = true;
      fortls.enable = true;
      java-language-server.enable = true;
      ccls.enable = true;
      ltex.enable = true;
      cmake.enable = true;
    };
    typescript-tools.enable = true;
    lsp-lines.enable = true;
    rustaceanvim.enable = true;
  };

  plugins.texpresso.enable = true;
  plugins.texpresso.texpressoPackage = null;
  plugins.typescript-tools.enable = true;
  plugins.lsp-lines.enable = true;
  plugins.julia-cell.enable = true;
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "haskell-tools-nvim";
      src = inputs.haskell-tools;
    })
  ];
}
