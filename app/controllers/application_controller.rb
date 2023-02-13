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

  def blank_payment_form
    render({ template: "calculation_templates/payment_form" })
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_f
    @principal = params.fetch("principal").to_f

    n = @years * 12
    r = @apr / 100 / 12
    @numerator = r * @principal
    @denominator = 1 - (1 + r) ** -n
    @payment = @numerator / @denominator

    render({ template: "calculation_templates/payment_results" })
  end
end
