class PagesController < ApplicationController

  def show
    categories    = params[:categories] || ''
    actus          = params[:actus] || ''
    page          = params[:id]

    template      = File.join(controller_path, categories, actus, page)
    template_path = File.join(view_paths.first, "#{template}.html.slim")

    if File.exists?(template_path)
      render template: template
    else
       render file: 'public/404.html', status: 404, layout: false
    end
  end

end
