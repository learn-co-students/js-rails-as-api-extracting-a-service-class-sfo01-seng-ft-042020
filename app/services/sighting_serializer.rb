class SightingSerializer

  def initialize(sighting_obj)
    @sighting = sighting_obj
  end

  def to_serialized_json 
    options = {
      include: {
        bird: {
          only: [:name, :species]
        },
        location: {
          only: [:longitude, :latitude]
        }
      }, 
      except: [:updated_at]

    }
    self.to_json(options)
  end

end