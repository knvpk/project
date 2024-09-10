-- Create a function to initialize the custom buffer
local function create_custom_dashboard()
	-- Create a new buffer
	vim.cmd('enew')                     -- Equivalent to :enew, creates a new empty buffer
	local buf = vim.api.nvim_get_current_buf() -- Get buffer ID

	-- Set buffer options to create a dashboard-like environment
	vim.bo[buf].buftype = 'nofile' -- Make it a scratch buffer
	vim.bo[buf].bufhidden = 'wipe' -- Automatically remove buffer when closed
	vim.bo[buf].swapfile = false -- Disable swapfile
	vim.wo.number = false      -- Disable line numbers
	vim.wo.relativenumber = false -- Disable relative line numbers
	vim.wo.cursorline = false  -- Disable cursorline
	vim.wo.list = false        -- Disable listchars

	-- Insert content into the buffer
	local lines = {
		"   Welcome to Neovim! ",
		"",
		"   Open File     :  [O]",
		"   Open Folder   :  [F]",
		"   Recent Files  :  [R]",
		"   Update Plugins:  [U]",
		"   New File      :  [N]",
		"",
		"   Quit          :  [Q]"
	}
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines) -- Add lines to buffer

	-- Define key mappings for the dashboard
	vim.api.nvim_buf_set_keymap(buf, 'n', 'O', ':edit<CR>', { noremap = true, silent = true })
	vim.api.nvim_buf_set_keymap(buf, 'n', 'F', ':Telescope find_files<CR>', { noremap = true, silent = true })
	vim.api.nvim_buf_set_keymap(buf, 'n', 'R', ':Telescope oldfiles<CR>', { noremap = true, silent = true })
	vim.api.nvim_buf_set_keymap(buf, 'n', 'U', ':PackerSync<CR>', { noremap = true, silent = true })
	vim.api.nvim_buf_set_keymap(buf, 'n', 'N', ':enew<CR>', { noremap = true, silent = true })
	vim.api.nvim_buf_set_keymap(buf, 'n', 'Q', ':qa<CR>', { noremap = true, silent = true })

	-- Optional: Disable certain modes in this buffer
	vim.api.nvim_buf_set_option(buf, 'modifiable', false) -- Make buffer non-editable
end
