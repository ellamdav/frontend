class ResponsibilitiesController < ContentItemsController
  include Cacheable

  slimmer_template "gem_layout_homepage"

  def index
    segments = params[:path].split("/")
    @translation_key = segments.join(".")

    set_slimmer_headers(template: "gem_layout_homepage_new")
  end
end
