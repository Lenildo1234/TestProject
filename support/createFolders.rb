d = Time.now.strftime("%d") #dia
m = Time.now.strftime("%b") #mês (nome)
y = Time.now.strftime("%Y") #ano

until Dir.exist?('./screenshots/'+y) do
    Dir.mkdir('./screenshots/'+y)
    
    until Dir.exist?('./screenshots/'+y+'/'+m) do
        Dir.mkdir('./screenshots/'+y+'/'+m)
    
        until Dir.exist?('./screenshots/'+y+'/'+m+'/'+d) do
            Dir.mkdir('./screenshots/'+y+'/'+m+'/'+d)
        end
    end               
end





