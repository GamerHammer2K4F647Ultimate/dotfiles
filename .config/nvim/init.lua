local vim = vim

local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('Mofiqul/vscode.nvim')
Plug('vim-airline/vim-airline')
Plug('tpope/vim-fugitive')

vim.call('plug#end')

require('vscode').load('dark')

vim.cmd('silent! set number')
vim.cmd('silent! set rnu')
vim.cmd('silent! set tabstop=4')
vim.cmd('silent! set shiftwidth=4')
vim.cmd('silent! set expandtab')
vim.cmd('silent! set noshowmode')
vim.cmd('silent! set shm+=I')

vim.g['airline#exentions#branch#enabled'] = 1

vim.api.nvim_create_autocmd("TermClose", {
    callback = function()
        vim.cmd("close")
    end
})

vim.api.nvim_create_user_command("Term", function()
    vim.cmd("tabnew | terminal")
end, {})

