class SearchController < PreAuthController
  KLASSES = {
    'family' => SpeciesFamily,
    'species' => Species,
    'traits' => Trait,
    'oceans' => Ocean,
    'resources' => Resource,
  }

  def autocomplete
    klass = KLASSES[params[:klass]]

    @items = if klass && params[:term]
               klass.search_by_name(params[:term])
             else
               []
             end
  end
end
