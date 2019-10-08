hash  = {"Q1"=>49000, "Q2"=>111000, "Q3"=>87200,
"Q4"=>133500}
n = ARGV[0].to_i


def filter(hash, n)
    nuevo_hash  = {}
    hash.each do |k,v|
        if v > n
            nuevo_hash [k] = v
        end
    end
    print nuevo_hash  
end
    
filter(hash,n)

# ruby iter3.rb  50000
