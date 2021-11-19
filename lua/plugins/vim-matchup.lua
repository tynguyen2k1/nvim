local M = {}

function M.config()
    -- G.loaded_matchit = 1
    CMD[[let g:matchup_matchpref = { 'html': { 'nolists': 1 } }]]
    CMD[[let g:matchup_matchparen_offscreen={'method': 'popup'}]]
    CMD[[let g:matchup_surround_enabled = 1]]
end

return M