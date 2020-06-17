module Jekyll
    module BRdates
        MONTHS = {"01" => "Jan", "02" => "Fev", "03" => "Mar",
                "04" => "Abr", "05" => "Mai", "06" => "Jun",
                "07" => "Jul", "08" => "Ago", "09" => "Set",
                "10" => "Out", "11" => "Nov", "12" => "Dez"}

        # http://man7.org/linux/man-pages/man3/strftime.3.html
        def BRdate(date)
            day = time(date).strftime("%e") # leading zero is replaced by a space
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            day+' de '+MONTHS[month]+' '+year
        end

        def html5date(date)
            day = time(date).strftime("%d")
            month = time(date).strftime("%m")
            year = time(date).strftime("%Y")
            year+'-'+month+'-'+day
        end
    end
end

Liquid::Template.register_filter(Jekyll::BRdates)