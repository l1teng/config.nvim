local cfg = {
  width = 120;
  height = 15;
  border = { "↖", "─", "┐", "│", "┘", "─", "└", "│" };
  default_mappings = false;
  debug = false;
  opacity = nil;
  resizing_mappings = false;
  post_open_hook = nil;
  focus_on_open = true;
  dismiss_on_move = false;
  force_close = true,
  bufhidden = "wipe",
}

require('goto-preview').setup { cfg }
