local lsp_installer = require "nvim-lsp-installer"

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
-- 自动安装 LanguageServers
local nvim_lsp= require('lspconfig')
local servers = {'tsserver', 'pyright' , 'lua_ls', 'yamlls', 'sqls', 'html'}

for _, lsp in ipairs(servers) do
	nvim_lsp[lsp].setup {}
end

