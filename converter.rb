#
# Get range IP (https://suip.biz/?act=ipintpr) and converter to nginx deny conf
# Author: Alex Ishida <alexishida@gmail.com>
# Version 1.0.0
# Date: 23/10/2019
#

if ARGV[0] == nil
    puts "---------------------------------------------------------------"
    puts "Missing filename!"
    puts "Example: ruby converter.rb test.txt"
    abort("---------------------------------------------------------------")
end

arquivo_original = "#{__dir__}/#{ARGV[0]}"
dados = ""

File.open(arquivo_original, "r") do |file|
    file.each do |line|

        line = line.strip
        if(!line.include? "#") && (line != "")
            dados = dados + "\n deny #{line};"
        else
            dados = dados + "\n #{line}"
        end

    end
end

arquivo_saida = arquivo_original.chomp(File.extname(arquivo_original))
arquivo_saida = "#{arquivo_saida}.conf"
out_file = File.new(arquivo_saida, "w")
out_file.puts(dados)
out_file.close