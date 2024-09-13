# Misc stuff
{
  plugins = {
    # Extra (stuff that doesn't affect editing)
    presence-nvim = {
      enable = true;
      editingText = "Hacking %s";
      workspaceText = "The One True Text Editor";
      buttons = [
        {
          label = "GitHub";
          url = "https://github.com/KaitoTLex";
        }
        {
          label = "Tech Support";
          url = "https://code.youwen.dev/";
        }
      ];
    };
  };
}
