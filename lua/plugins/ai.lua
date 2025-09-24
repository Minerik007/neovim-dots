if false then
    return {}
end

return {
        'milanglacier/minuet-ai.nvim',
        config = function()
        require('minuet').setup {
            virtualtext = {
                auto_trigger_ft = {},
            },
            provider = 'openai_fim_compatible',
            n_completions = 5,
            context_window = 2048,
            notify = false,
            provider_options = {
                openai_fim_compatible = {
                    api_key = 'TERM',
                    name = 'Llama.cpp',
                    end_point = 'http://127.0.0.1:8080/v1/completions',
                    model = 'PLACEHOLDER',
                    optional = {
                        max_tokens = 56,
                        top_p = 0.9,
                    },
                    -- Llama.cpp does not support the `suffix` option in FIM completion.
                    -- Therefore, we must disable it and manually populate the special
                    -- tokens required for FIM completion.
                    template = {
                        prompt = function(context_before_cursor, context_after_cursor)
                            return '<|fim_prefix|>'
                                .. context_before_cursor
                                .. '<|fim_suffix|>'
                                .. context_after_cursor
                                .. '<|fim_middle|>'
                        end,
                        suffix = false,
                    },
                },
            },
        }
    end,
    dependencies = {
        { 'nvim-lua/plenary.nvim' },
        { 'hrsh7th/nvim-cmp' },
    }
}

