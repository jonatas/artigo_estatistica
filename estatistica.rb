dados_brutos = [23, 31, 31, 21, 31, 26, 31, 22, 22, 
                24, 31, 21, 22, 20, 22, 31, 21, 20]
rol = dados_brutos.sort
#p rol # [20, 20, 21, 21, 21, 22, 22, 22, 22, 23, ...]
fi = {}
rol.each do |idade|
  if not fi[idade]
    fi[idade] = 1
  else
    fi[idade] += 1
  end
end
fr = {}
n = dados_brutos.size
fi.each do |idade, frequencia_absoluta|
  fr[idade] = ((frequencia_absoluta.to_f / n) * 100)
end
fac = {}
acumulado = nil
fi.keys.sort.each do |idade|
  if not acumulado
    acumulado = fi[idade]
  else
    acumulado += fi[idade]
  end
  fac[idade] = acumulado
end
