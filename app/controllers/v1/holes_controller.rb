class V1::HolesController < ApplicationController
  def index
    render json: {holes: [
      {
        name: "some-thing",
        guid: "1234123123123",
        number: 1,
      },
      {
        name: "some-thing-else",
        guid: "45432534",
        number: 2,
      },
    ]}
  end
end
