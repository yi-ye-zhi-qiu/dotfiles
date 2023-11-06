local builtin = require('telescope.builtin')
require('telescope').setup{ defaults = { file_ignore_patterns = {"venv*", "__pycache__", "node_modules"} } }
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})
