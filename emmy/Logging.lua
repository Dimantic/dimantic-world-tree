

--- "Emmy-lua" type hints for https://github.com/EmmyLua.

--- Logging Module: Contains functions and metatables to handle logging.
--- No manual require is needed, its already included.

Logging = {}


  --- @class Logging.NoderLogEntry
  --- @field label string
  --- @field content string
  --- @field tree_id table
  --- @field create_at table


  --- Creates a log entry.
  --- @param label string The label of the log entry.
  --- @param log_message string The message of the log entry.
  --- @param data table The data of the log entry.
  --- @return Logging.LogEntry The created log entry.
  function Logging.log_entry(label, log_message, data) end



--- Logs an error.
--- @param log_message string The message of the error.
--- @param data table The data of the error.
function Logging.err(log_message, data) end




--- Logs an info.
--- @param log_message string The info.
--- @param data table Additional data.
function Logging.info(log_message, data) end




--- Logs an warning.
--- @param log_message string The warning.
--- @param data table Additional ddata.
function Logging.warning(log_message, data) end




  --- Puts the logs on the screen as html.
  --- @param logs table The logs to put on the screen.
  function Logging.put_on_screen_as_html(logs) end




--- Saves all logs into the database.
function Logging.save_all() end



--- Saves all logs with a specific label into the database.
--- @param label string The label of the logs to save: "error", "info", "warn".
function Logging.save_all_by_label(label) end



--- Returns all logs of this current handler-session.
--- @return table<NoderLogEntry> The logs.
function Logging.get_all() end



--- Returns all logs from the database.
--- @return table<NoderLogEntry> The logs.
function Logging.get_all_from_database() end


--- Returns all logs with a specific label from the current handler-session.
--- @param label string The label of the logs to return: "error", "info", "warn".
--- @return table<NoderLogEntry> The logs.



--- Returns all logs with a specific label from the database.
--- @param label string The label of the logs to return: "error", "info", "warn".
--- @return table<NoderLogEntry> The logs.



--- Saves the log entry into the database.
--- @return any The result of the database query.
