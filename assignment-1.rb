require "csv"

    puts "1(新規でメモを作成）2(既存のメモを編集する)"
    memo_type = gets.chomp.to_i
    
    if memo_type == 1
 
        puts "拡張子を除いたファイルを入力してください"
        fileName = gets.chomp.to_s
        CSV.open(fileName +'.csv','w')
        puts "メモしたい内容を記入してください"
        puts "完了したらEnterを押します"
        memo = gets.chomp.to_s
        CSV.open(fileName +'.csv','w')  { |content|
        content << [memo]
        }
        
    elsif memo_type == 2
        puts "編集したいメモのファイル名を拡張子を除いて記入してください"
        overWrittenFileName = gets.chomp.to_s
        puts "上書きしたい内容を記入してください"
        overWrittenMemo = gets.chomp.to_s
　　    CSV.open(overWrittenFileName +'.csv','w')  { |content|
   　    content << [overWrittenMemo]
        }
    end
