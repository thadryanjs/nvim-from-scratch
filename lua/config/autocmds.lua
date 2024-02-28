
-- automatically remove trailing whitespace
-- https://vi.stackexchange.com/questions/37421/how-to-remove-neovim-trailing-white-space
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})


-- do not automatically add comment when I hit enter
-- https://stackoverflow.com/questions/4896003/how-to-stop-vim-from-automatically-inserting-the-comment-leader-when-enter-is-pr
-- https://stackoverflow.com/questions/11256468/stop-vim-from-adding-a-new-line-to-the-end-of-a-file
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*" },
  command = [[setlocal formatoptions-=cro]],
})

-- set Snakefile filetype to python (I cant probably condense this)
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "Snakefile", "*.smk", "*.snake", "*.snakefile", "*.rules" },
  command = [[set syntax=snakemake]],
})

-- do not conceal characters in any file
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*" },
  command = [[setlocal conceallevel=0]],
})
-- some plugin must be turning this back on >_<
