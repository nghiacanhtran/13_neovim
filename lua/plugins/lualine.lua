require('lualine').setup {
    options = {
      theme = 'gruvbox', -- Chủ đề
      component_separators = '|', -- Ngăn cách các thành phần
      section_separators = '',    -- Ngăn cách các phần
      icons_enabled = true,       -- Bật biểu tượng
    },
    sections = {
      lualine_a = { 'mode' }, -- Hiển thị chế độ (NORMAL, INSERT, v.v.)
      lualine_b = { 'branch', 'diff', 'diagnostics' }, -- Nhánh Git, diff, lỗi
      lualine_c = {
        {
          'filename',
          path = 1, -- Hiển thị đường dẫn đầy đủ
          symbols = {
            modified = '  ',   -- Biểu tượng khi file được sửa
            readonly = '  ',   -- Biểu tượng file chỉ đọc
            unnamed = '[No Name]', -- Biểu tượng file chưa lưu
          }
        }
      },
      lualine_x = { 'encoding', 'fileformat', 'filetype' }, -- Encoding, định dạng, loại file
      lualine_y = { 'progress' }, -- Tiến trình (dòng hiện tại/tổng dòng)
      lualine_z = { 'location' }  -- Vị trí con trỏ (dòng/cột)
    },
    inactive_sections = { -- Thanh trạng thái khi không hoạt động
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {}, -- Nếu muốn hiển thị các tab
    extensions = { 'nvim-tree' } -- Tích hợp với nvim-tree
  }