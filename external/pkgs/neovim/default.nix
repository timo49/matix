{ inputs, config, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    neovim
  ];

  home-manager.sharedModules = [{
    programs.neovim = {
      enable = true;

      extraLuaConfig = ''
        -- Hint: use `:h <option>` to figure out the meaning if needed
        vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
        vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
        vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

        -- Tab
        vim.opt.tabstop = 2                 -- number of visual spaces per TAB
        vim.opt.softtabstop = 2             -- number of spacesin tab when editing
        vim.opt.shiftwidth = 2              -- insert 4 spaces on a tab
        vim.opt.expandtab = true            -- tabs are spaces, mainly because of python

        -- UI config
        vim.opt.number = true               -- show absolute number
        vim.opt.termguicolors = true

        -- Searching
        vim.opt.incsearch = true            -- search as characters are entered
        vim.opt.hlsearch = false            -- do not highlight matches
        vim.opt.ignorecase = true           -- ignore case in searches by default
        vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered

      '';
    };
  }];
}
