require('telescope').setup {
    defaults = {
      prompt_prefix = "🔍 ",  -- Ký tự hiển thị trong hộp tìm kiếm
      selection_caret = "➤ ", -- Ký tự hiển thị trước dòng được chọn
      path_display = { "truncate" }, -- Hiển thị đường dẫn tệp
    },
  }