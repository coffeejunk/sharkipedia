class DataExportController < PreAuthController
  def index
    if params[:commit]
      data, exporter = if params[:export_type] == 'Traits'
                          [Observation.all, Export::Traits]
                        else
                          [Trend.all, Export::Trends]
                        end

      @species = []
      if params[:species]
        species_ids = params[:species].reject(&:blank?)
        unless species_ids.blank?
          data = data.where species_id: params[:species]
          Species.where id: species_ids
        end
      end

      @data = exporter.new(data).call
    end
  end
end
