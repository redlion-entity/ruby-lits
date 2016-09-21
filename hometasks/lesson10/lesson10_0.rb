require 'mysql2'

client = Mysql2::Client.new(
    :host => "localhost",
    :username => "root",
    :password => 'root',
    :database => 'redlion_db',
    :encoding => 'utf8'
)

figures = client.query("SELECT * FROM figures")
formulas = client.query("SELECT figure_id, formula FROM formulas")

figures.each do |figure|
  figure_formulas = []

  # finding formulas
  formulas.each do |formula|
    if formula['figure_id'] == figure['Id']
      figure_formulas.push(formula['formula'])
    end
  end

  result = figure['name'] + ' - '
  result += figure_formulas.empty? ? 'No formulas' : figure_formulas.join(', ')

  puts result
end