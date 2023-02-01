local custom = {}
local conf = require("modules.ui.user.config")

custom["folke/tokyonight.nvim"] = {
	lazy = true,
	config = conf.tokyonight,
}

return custom
