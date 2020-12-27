
#0 グー　１　チョキ　２パー

srand
#ジャンケンで勝利した場合のあっち向いてホイ
def look_this_way_our()
    loop {
    puts "あっち向いてホイ！"
    puts "向かせたい方向を入力してください"
    puts "0:↑1:→2:↓3:←"

    our_side = gets.chomp.to_i
    
    if our_side == 0
        opposit_side = rand(4)
    
        case opposit_side
            when 0
            puts "相手：↑"
            puts "あなたの勝ち"
            break
            
            when 1
            puts "相手：→"
            puts "やりなおし"
            break
            
            when 2
            puts "相手：↓"
            puts "やりなおし"
            break
            
            when 3
            puts "相手：←"
            puts "やりなおし"
            break
            
        end

    elsif our_side == 1
        opposit_side = rand(4)
    
        case opposit_side
            when 0
            puts "相手：↑"
            puts "やりなおし"
            break
            
            when 1
            puts "相手：→"
            puts "あなたの勝ち"
            break
            
            when 2
            puts "相手：↓"
            puts "やりなおし"
            break
            
            when 3
            puts "相手：←"
            puts "やりなおし"
            break
            
        end
    
    elsif our_side == 2
        opposit_side = rand(4)
    
        case opposit_side
            when 0
            puts "相手：↑"
            puts "やりなおし"
            break
            
            when 1
            puts "相手：→"
            puts "やりなおし"
            break
            
            when 2
            puts "相手：↓"
            puts "あなたの勝ち"
            break
            
            when 3
            puts "相手：←"
            puts "やりなおし"
            break
            
        end

    elsif our_side == 3
        opposit_side = rand(4)
    
        case opposit_side
            when 0
            puts "相手：↑"
            puts "やりなおし"
            break
            
            when 1
            puts "相手：→"
            puts "やりなおし"
            break
            
            when 2
            puts "相手：↓"
            puts "やりなおし"
            break
            
            when 3
            puts "相手：←"
            puts "あなたの勝ち"
            break
        end
    end
    }
end

#ジャンケンで負けた場合のあっち向いてホイ
def look_this_way_opp()
    loop {

    puts "相手のターンです"
    
    opposit_side = rand(4)
    
    puts "向く方向を入力してください"
    puts "0:↑1:→2:↓3:←"
    our_side = gets.chomp.to_i
    
    if opposit_side == 0
        puts "相手：↑"
        case our_side
            when 0
            puts "あなた：↑"
            puts "あなたの負け"
            break
            
            when 1
            puts "あなた：→"
            puts "やりなおし"
            break
            
            when 2
            puts "あなた：↓"
            puts "やりなおし"
            break
            
            when 3
            puts "あなた：←"
            puts "やりなおし"
            break
            
        end

    elsif opposit_side == 1
    
        puts "相手：→"
        case our_side
            when 0
            puts "あなた：↑"
            puts "やりなおし"
            break
            
            when 1
            puts "あなた：→"
            puts "あなたの負け"
            break
            
            when 2
            puts "あなた：↓"
            puts "やりなおし"
            break
            
            when 3
            puts "あなた：←"
            puts "やりなおし"
            break
            
        end
    
    elsif opposit_side == 2
        puts "相手：↓"
        case our_side
            when 0
            puts "あなた：↑"
            puts "やりなおし"
            break
            
            when 1
            puts "あなた：→"
            puts "やりなおし"
            break
            
            when 2
            puts "あなた：↓"
            puts "あなたの負け"
            break
            
            when 3
            puts "あなた：←"
            puts "やりなおし"
            break
            
        end

    elsif opposit_side == 3
        puts "相手：←"
        case our_side
            when 0
            puts "あなた：↑"
            puts "やりなおし"
            break
            
            when 1
            puts "あなた：→"
            puts "やりなおし"
            break
            
            when 2
            puts "あなた：↓"
            puts "やりなおし"
            break
            
            when 3
            puts "あなた：←"
            puts "あなたの負け"
            break
        end
    end
    }
end


#ジャンケンメソッド
def rk_pp_ss()
    loop {
        puts "ジャンケンポン！！"
        puts "0:グー　１:チョキ　2:パー　いずれかを入力してください"

        our_side = gets.chomp.to_i

        if our_side == 0
            opposit_side = rand(3)

            case opposit_side
                when 0
                puts "相手：グー" 
                puts "あいこ"
                when 1
                puts "相手：チョキ" 
                puts "あなたの勝ち"
                look_this_way_our()
                when 2
                puts "相手：パー" 
                puts "あなたの負け"
                look_this_way_opp()
            end

        elsif our_side == 1
            opposit_side = rand(3)

            case opposit_side
                when 0
                puts "相手：グー" 
                puts "あなたの負け"
                look_this_way_opp()
                when 1
                puts "相手：チョキ" 
                puts "あいこ"
                when 2
                puts "相手：パー" 
                puts "あなたの勝ち"
                look_this_way_our()
            end
    
        elsif our_side == 2
            opposit_side = rand(3)

            case opposit_side
                when 0
                puts "相手：グー" 
                puts "あなたの勝ち"
                look_this_way_our()
                
                when 1
                puts "相手：チョキ" 
                puts "あなたの負け"
                look_this_way_opp()
                
                when 2
                puts "相手：パー"
                puts "あいこ"
            end
        end
    }
end

rk_pp_ss()


