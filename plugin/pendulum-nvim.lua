return {
    "ptdewey/pendulum-nvim",
    config = function()
        require('pendulum').setup({
            log_file = vim.fn.expand("$HOME/Documents/pendulum_log.csv"),
            timeout_len = 30,
            timer_len = 30,
            gen_reports = true,
            top_n = 10,
            hours_n = 10,
            time_format = "24h",
            time_zone = "Europe/Prague",
            report_section_excludes = {},
            report_excludes = {
                filetype = {
                    "alpha",
                    "TelescopePrompt",
                    "toggleterm"
                },
                file = {},
                project = {},
                directory = {},
                branch = {},
            },
        })

    end,
}
