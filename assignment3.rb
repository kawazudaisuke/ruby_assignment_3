
srand

coin = 100
point = 0

loop do
    if coin <= 0
       puts "コインが無くなりました"
       break
    end
    
    puts "投入するコインを選択してください1(10コイン）,2(20コイン),3(30コイン),4(ゲーム終了)"
    puts "#{coin}" + "コイン" 
    puts "#{point}" + "ポイント"
    selected_coin = gets.to_i
    if coin > 0
        case selected_coin
        when 1
            if coin < 10
       　　　　　puts "残コインが足りませんい"
                redo#投入するコインが足りない場合はloopの最初に戻りコイン選択をやり直す
            end
            coin = coin - 10
            puts "残り#{coin}コイン"
            
        when 2
            if coin < 20
                puts "残コインが足りません　"
                redo#投入するコインが足りない場合はloopの最初に戻りコイン選択をやり直す
            end
            coin = coin - 20
            puts "残り#{coin}コイン"
            
        when 3
            if coin < 30
                puts "残コインが足りません　"
                redo#投入するコインが足りない場合はloopの最初に戻りコイン選択をやり直す
            end
            coin = coin - 30
            puts "残り#{coin}コイン"
            
        when 4
            break
        end
    end

puts "スロットレバーを回してください（Press Enter Key）"
    void = gets
    puts "-----------------"

    line1_1 = rand(10)
    line1_2 = rand(10)
    line1_3 = rand(10)
    line1 = ["|#{line1_1}|" ,"|#{line1_2}|"  ,"|#{line1_3}|"]
  
    line1.each do |num|
        sleep(0.3)
        puts num
    end
    
        void = gets
        puts "-----------------"

        line2_1 = rand(10)
        line2_2 = rand(10)
        line2_3 = rand(10)

        line2 = ["|#{line1_1}|"+ "|#{line2_1}|" ,"|#{line1_2}|" + "|#{line2_2}|","|#{line1_3}|"+"|#{line2_3}|"]
        
        line2.each do |num|
            sleep(0.2)
            puts num
        end

            void = gets
            puts "-----------------"

            line3_1 = rand(10)
            line3_2 = rand(10)
            line3_3 = rand(10)

            line3 = ["|#{line1_1}|"+"|#{line2_1}|"+"|#{line3_1}|" , "|#{line1_2}|"+"|#{line2_2}|"+"|#{line3_2}|" , "|#{line1_3}|"+"|#{line2_3}|"+"|#{line3_3}|"]
            line3.each do |num|
                sleep(0.3)
                puts num
            end



        if line1_1 == line2_1 && line1_1 == line3_1 || line1_1 == line2_2 && line1_1 == line3_3
           puts "#{line1_1}が揃いました"
           point += 100
        elsif  line1_2 == line2_2 && line1_2 == line3_2
           puts "#{line1_2}が揃いました"
           point += 100
        elsif  line1_3 == line2_3 && line1_3 == line3_3 || line1_3 == line2_2 && line1_3 == line3_1
           puts "#{line1_3}が揃いました"
           point += 100
        end
end


sleep(1)
puts "=================================================================="

sleep(0.2)
puts "  ----       --     --   -- ------    --    --  --  ------  ----  "
sleep(0.2)
puts " -- ---     ----    --   -- ------   ----   --  --  ------  ----- " 
sleep(0.2)
puts "--   ---   --  --   --   -- ---     --  --  --  --  ---     --  --"
sleep(0.2)
puts "--   ---  --    --  --- --- ---     --  --  --  --  ---     --  --"
sleep(0.2)
puts "--        --    --  ------- ------  --  --   ----   ------  ----- "
sleep(0.2)
puts "--   ---  --------  ------- ------  --  --   ----   ------  ----- "
sleep(0.2)
puts " -- ----  --------  --   -- ---     --  --   ----   --      --  --"
sleep(0.2)
puts " ---- --  --    --  --   -- ------   ----     --    ------  --  --"
sleep(0.2)
puts "  --  --  --    --  --   -- ------    --      --    ------  --  --"


sleep(0.3)
puts "あなたのスコアは#{point}ポイントでした"