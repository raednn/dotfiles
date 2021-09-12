vim.cmd [[autocmd FileType javascript,javascriptreact,typescript,typescriptreact,lua,json,html,markdown setlocal ts=2 sts=2 sw=2]]
vim.cmd [[autocmd FileType solidity,rust setlocal ts=4 sts=4 sw=4]]

-- javascript
vim.cmd [[autocmd FileType javascript nnoremap <leader>[ :!node %<cr>]]
-- typescript
vim.cmd [[autocmd FileType typescript nnoremap <leader>[ :!yarn dev<cr>]]
-- rust
vim.cmd [[autocmd FileType rust nnoremap <leader>[ :!cargo build<cr>]]
vim.cmd [[autocmd FileType rust nnoremap <leader>] :!cargo run<cr>]]
-- solidity
vim.cmd [[autocmd FileType solidity nnoremap <leader>[ :!yarn compile<cr>]]
vim.cmd [[autocmd FileType solidity nnoremap <leader>] :!yarn test<cr>]]
