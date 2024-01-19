require("rest-nvim").setup({
  result_split_horizontal = false,
  result_split_in_place = false,
  stay_in_current_window_after_split = true,
  skip_ssl_verification = false,
  encode_url = true,
  highlight = {
    enabled = true,
    timeout = 150,
  },
  result = {
    -- toggle showing URL, HTTP info, headers at top the of result window
    show_url = true,
    show_curl_command = false,
    show_http_info = true,
    show_headers = true,
    show_statistics = false,
    formatters = {
      json = "jq",
      html = function(body)
        return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
      end
    },
  },
  -- Jump to request line on run
  jump_to_request = false,
  env_file = '.env',
  custom_dynamic_variables = {},
  yank_dry_run = true,
  search_back = true,
})

local nmap = function(keys, func, desc)
  if desc then
    desc = 'Rest: ' .. desc
  end

  vim.keymap.set('n', keys, func, { desc = desc })
end

nmap("<leader>rx", "<Plug>RestNvim", "Execute request using rest-nvim")
nmap("<leader>rp", "<Plug>RestNvimPreview", "Preview curl request")
