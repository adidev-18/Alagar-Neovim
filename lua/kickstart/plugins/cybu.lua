return {
  'ghillb/cybu.nvim',
  branch = 'main',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local ok, cybu = pcall(require, 'cybu')
    if not ok then
      return
    end
    cybu.setup()
    vim.keymap.set('n', 'p[', '<Plug>(CybuPrev)')
    vim.keymap.set('n', 'p]', '<Plug>(CybuNext)')
    vim.keymap.set({ 'n', 'v' }, '<c-s-tab>', '<plug>(CybuLastusedPrev)')
    vim.keymap.set({ 'n', 'v' }, '<c-tab>', '<plug>(CybuLastusedNext)')
  end,
}
