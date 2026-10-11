hl.config({
  input = {
    kb_layout  = "no",
    kb_variant = "",
    kb_model   = "",
    kb_options = "",
    kb_rules   = "",
    follow_mouse = 1,
    sensitivity  = -0.5, -- -1.0 - 1.0, 0 = no modification
    touchpad = {
      natural_scroll = false,
    },
  },
})

hl.config({
  device = {
    { name = "epic-mouse-v1",            sensitivity = -0.5 },
    { name = "razer-razer-naga-trinity", sensitivity = -0.5 },
  },
})