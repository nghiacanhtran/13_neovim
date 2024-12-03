local map = vim.api.nvim_set_keymap
-- { noremap = true }: Tránh đệ quy khi remap.
-- { silent = true }: Không hiển thị thông báo khi nhấn phím.
local opts = { noremap = true, silent = true }

-- Đặt <leader> thành phím <space>
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remap Ctrl + B để vào Visual Block Mode
-- '<C-b>': Lắng nghe phím Ctrl + B.
-- '<C-v>': Chuyển sang chế độ Visual Block Mode.
-- tham số 'n'-> Áp dụng cho Normal mode
map('n', '<C-b>', '<C-v>', opts)

-- Mở danh sách project
-- '<leader>p' Ví dụ: Nếu <leader> là space, thì nhấn {space}p sẽ kích hoạt phím tắt.
-- ':Telescope projects<CR>'  Gọi extension projects của plugin telescope.nvim, mở giao diện liệt kê các project,
-- <CR>: Giả lập phím Enter, hoàn tất việc thực thi lệnh.
map('n', '<leader>p', ':Telescope projects<CR>', opts)


-- Gán phím <leader>f để tìm kiếm file trong dự án
map('n', '<leader>f', ':Telescope find_files<CR>', opts)

-- Chuyển buffer
map('n', '<Tab>', ':bnext<CR>', opts)
map('n', '<S-Tab>', ':bprevious<CR>', opts)

