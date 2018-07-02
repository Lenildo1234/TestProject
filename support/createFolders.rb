 require 'fileutils'

d = Time.now.strftime("%d") #dia
m = Time.now.strftime("%b") #mês (nome)
y = Time.now.strftime("%Y") #ano

FileUtils.mkdir_p(File.join('../../testes/screenshots',y,m,d)) unless File.exist?(File.join('../../testes/screenshots',y,m,d)) 


