# Setup
ruby_info = "[#{RUBY_VERSION}p#{RUBY_PATCHLEVEL}]"
rails_info = defined?(Rails) ? "[#{Rails.application.class.parent_name.downcase}][#{Rails.env}]" : nil

# Prompt
Pry.config.prompt = [
  proc do |conf|
    tree = conf.binding_stack.map { |stack| Pry.view_clip stack.eval("self") } * " / "
    [ruby_info, rails_info, "[PRY #{tree} - #{conf.expr_number}:#{conf.nesting_level}]> "].compact.join
  end,
  proc do |conf|
    tree = conf.binding_stack.map { |stack| Pry.view_clip stack.eval("self") } * " / "
    [ruby_info, rails_info, "[PRY #{tree} - #{conf.expr_number}:#{conf.nesting_level}]> "].compact.join
  end
]
