class ApplicationController < ActionController::Base
  def blank_square_form
    render({ template: "calculation_templates/square_form" })
  end

  def square_results
    @number = params.fetch("number").to_f
    @square = @number ** 2
    render({ template: "calculation_templates/square_results" })
  end

  def blank_square_root_form
    render({ template: "calculation_templates/square_root_form" })
  end

  def square_root_results
    @number = params.fetch("number").to_f
    @square_root = Math.sqrt(@number)
    render({ template: "calculation_templates/square_root_results" })
  end
end
