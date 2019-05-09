class CepInvalidoError < StandardError
  def initialize(msg)
    super msg
  end
end

class LogradouroNaoEncontradoError < StandardError
  def initialize(msg)
    super msg
  end
end

class CepRequeridoError < StandardError
  def initialize(msg)
    super msg
  end
end

