local function add()
  require("harpoon"):list():add()
end

local function list()
  require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
end

local function clear()
  require("harpoon"):list():clear()
end

local function select(i)
  return function()
    require("harpoon"):list():select(i)
  end
end

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ha", add,       desc = "[H]arpoon [a]dd" },
    { "<leader>hl", list,      desc = "[H]arpoon [l]ist" },
    { "<leader>hc", clear,     desc = "[H]arpoon [c]lear" },
    { "<leader>1",  select(1), desc = "Harpoon file [1]" },
    { "<leader>2",  select(2), desc = "Harpoon file [2]" },
    { "<leader>3",  select(3), desc = "Harpoon file [3]" },
    { "<leader>4",  select(4), desc = "Harpoon file [4]" },
    { "<leader>5",  select(5), desc = "Harpoon file [5]" },
  },
}
