module Response

  def render_data(data, code = 1)
    response_body = {
      code: code,
      data: data
    }

    render json: response_body
  end

end