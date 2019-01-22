class WelcomeController < ApplicationController
  def index
    @documents = Document
                    .all
                    .sort_by { |obj| obj.created_at }
                    .reverse!
                    .first(3)
  end
end
