module Response

  def render_data(data, code = 0)
    response_body = {
      code: code,
      data: data
    }

    render json: response_body
  end

end