class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home,  ]

  def home
    @disable_header = true
    @disable_footer = true
  end
end
