vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.keymap.set("n", "<leader>fv", vim.cmd.Ex) --WE USIN' OIL FOR DIS
vim.keymap.set("n", "<leader>r", function()
    local root = vim.fn.systemlist("git rev-parse --show-toplevel")[1] or vim.fn.getcwd()
    local script = root .. "/build.sh"

    if vim.fn.filereadable(script) == 1 then
        vim.fn.jobstart(script, { cwd = root, detach = true })
        print("Running build.sh in " .. root)
    else
        print("Error: build.sh not found in project root!")
    end
end, { noremap = true, silent = true })
