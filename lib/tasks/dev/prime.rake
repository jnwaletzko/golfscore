if Rails.env.development? || Rails.env.test?
  require "factory_bot"

  namespace :dev do
    desc "Sample data for local development environment"
    task prime: "db:setup" do
      include FactoryBot::Syntax::Methods

      course = create(:course)
      tee = create(:tee, course: course)

      [*1..18].each do |hole_number|
        create(:hole, tee: tee, number: hole_number)
      end
    end
  end
end
