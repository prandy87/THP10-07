def trader_du_dimanche(tab)
				
    tab_resultats = Hash.new
    k = 0


    # Stockage dans un Hash de la plusvalue de toute les combinaisons possibles d'achat et de vente

for i in 0..tab.length-1 do 
                for j in (i+1)..tab.length-1 do
                                tab_resultats[tab[j].to_i - tab[i].to_i] = [i, j].to_a
                end
end

    # Combinaison de jours d'achat/vente maximisant le gain
tab_resultats = Hash[tab_resultats.sort_by{|k,v| -k.to_i}]

puts tab_resultats[tab_resultats.keys[0]]
end

trader_du_dimanche([17,3,6,9,15,8,6,1,10])