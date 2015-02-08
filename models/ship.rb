class Ship

  attr_accessor :name, :model, :starship_class, :manufacturer, :length, :hyperdrive_rating, :MGLT,
    :cost_in_credits, :crew, :passengers, :max_atmosphering_speed, :cargo_capacity, :consumables,
    :films, :pilots, :url, :created, :edited

  def initialize(data)
    # strings
    @name = data['name']
    @model = data['name']
    @starship_class = data['starship_class']
    @manufacturer = data['man']
    @length = data['length'].to_i
    @hyperdrive_rating = data['hyperdrive_rating']
    @MGLT = data['MGLT']

    # integers
    @cost_in_credits = data['cost_in_credits'].to_i
    @crew = data['crew'].to_i
    @passengers = data['passengers'].to_i
    @max_atmosphering_speed = data['max_atmosphering_speed'].to_i
    @cargo_capacity = data['cargo_capacity'].to_i
    @consumables = data['consumables'].to_i

    #lists
    @films = data['films'].length
    @pilots = data['pilots'].length

    #API cruft
    @url = data['url']
    @created = data['created']
    @edited = data['edited']
  end

  def options
    ignored_fields = [:@url, :@created, :@edited]
    (instance_variables - ignored_fields).map { |o| o.to_s.sub('@', '') }
  end

  def to_s
    options.each do |option|
      puts "#{option}: #{send(option)}"
    end
  end
end