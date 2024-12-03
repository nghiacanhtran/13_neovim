require('project_nvim').setup {
    -- Methods of detecting the root directory. **"lsp"** uses the native neovim
    -- lsp, while **"pattern"** uses vim-rooter like glob pattern matching. Here
    -- order matters: if one is not detected, the other is used as fallback. You
    -- can also delete or rearangne the detection methods.
    detection_methods = { "lsp", "pattern" },
    silent_chdir = false, -- Thông báo khi chuyển đổi dự án
    scope_chdir = 'global', -- Toàn bộ Neovim dùng chung root
}
  
-- Tích hợp với Telescope
require('telescope').load_extension('projects')