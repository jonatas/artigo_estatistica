class Pesquisa < Array
  def initialize(dados_brutos)
    @dados_brutos = dados_brutos
    @fi = {}
    @fr = {}
    @fac = {}
  end
  def rol
    @dados_brutos.sort
  end
  def fi
    rol.each do |idade|
      if not @fi[idade]
        @fi[idade] = 1
      else
        @fi[idade] += 1
      end
    end
    @fi
  end
  def n
    dados_brutos.size
  end
  def fr
    fi.each do |idade, frequencia_absoluta|
      @fr[idade] = ((frequencia_absoluta.to_f / n) * 100)
    end
    @fr
  end
  def classes
    fi.keys.sort
  end
  def fac
    acumulado = nil
    idades.each do |idade|
      if not acumulado
        acumulado = @fi[idade]
      else
        acumulado += @fi[idade]
      end
      @fac[idade] = acumulado
    end
    @fac
  end
end
