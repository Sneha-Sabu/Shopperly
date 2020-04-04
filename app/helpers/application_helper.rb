module ApplicationHelper

  def cart_count_over_one
    if @cart.line_item.count > 0
      return "<span class='tag is-dark'>#{@cart.line_item.count}</span>".html_safe
    end
  end

  def cart_has_item
    return @cart.line_item.count > 0
  end
end