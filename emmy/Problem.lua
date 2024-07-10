

--- The problem module.
--- @module Problem
Problem = {}



--- @class Problem.Problem A problem object: Created if there is a problem with the system.
--- @field message string The message of the problem.
--- @field detail_text string The detailed text of the problem.
--- @field data table The data of the problem.

Problem.Problem = {}




--- Creates a new Problem-Object and renders it as an error card, exits handler with code 1.
--- @param message string The message of the problem.
--- @param detail_text string The detailed text of the problem.
--- @param data table The data of the problem.




--- Outputs the Problem as a html error card.
--- @return nil
function Problem.Problem:render_error_card() end




--- Returns the value, if value is not a Problem, otherwise calls the err_handler function.
--- If no err_handler is provided, it calls Problem.Problem.render_error_card.
--- It returns in case of error, whatever the err_handler returns.
--- @param value_or_error any The value to check.
--- @param err_handler function The error handler function.
--- @return any
function Problem.onerr(value_or_error, err_handler) end

