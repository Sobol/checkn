module ApplicationHelper
  def action_stylesheet_link_tag
    stylesheet_link_tag_if_exist File.join('app', controller_name, action_name)
  end

  def controller_stylesheet_link_tag
    stylesheet_link_tag_if_exist File.join('app', controller_name)
  end

  def action_javascript_include_tag
    javascript_include_tag_if_exist File.join('app', controller_name, action_name)
  end

  def controller_javascript_include_tag
    javascript_include_tag_if_exist File.join('app', controller_name)
  end

  def id_for_body
    "#{controller.css_id_prefix}#{controller.controller_name}-#{controller.action_name}"
  end

  def class_for_body
    "#{controller.css_class_prefix}#{controller.controller_name}"
  end

  private

  def stylesheet_link_tag_if_exist(stylesheet)
    css_file = File.join(Rails.root, 'public', 'stylesheets', stylesheet) + '.css'
    if File.exist?(css_file)
      stylesheet_link_tag stylesheet
    end
  end

  def javascript_include_tag_if_exist(javascript)
    js_file = File.join(Rails.root, 'public', 'javascripts', javascript) + '.js'
    if File.exist?(js_file)
      javascript_include_tag javascript
    end
  end

  def browser_class
    user_agent = UserAgent.parse(request.user_agent)
    return if user_agent.browser == "Internet Explorer"
    user_agent.version.to_s =~ /\A\d+\.\d+/
    return if $MATCH.blank?

    if user_agent.browser.downcase == "opera"
      user_agent.browser.downcase
    else
      user_agent.browser.downcase + $MATCH
    end
  end
end
