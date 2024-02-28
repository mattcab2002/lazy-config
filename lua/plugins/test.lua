return {
    "nvim-neotest/neotest",
    opts = { adapters = { "neotest-go" } },
    dependencies = {
        "nvim-neotest/neotest-go",
        "nvim-neotest/neotest-plenary",
    },
}
