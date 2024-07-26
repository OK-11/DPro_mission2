
def input
  while true
    puts "1から5の数字で評価を入力してください。終了する場合は「6」を入力してください"
    point = gets.to_i
  
    if point == 6
      puts "終了します"
      break
    elsif point == 0
      puts "数字を入力してください"
      point = gets.to_i
    end

    if 1 <= point && point <= 5
    else
      puts "1から5で入力してください"
      point = gets.to_i
    end

    if 1 <= point && point <= 5
      puts "コメントを入力してください"
      comment = gets
      data = "あなたのポイント：#{point} あなたのコメント：#{comment}"
      puts data

      file = File.open("data.txt" , "a")
      file.puts(data)
      file.close
    end

  end
end

def read
  file = File.open("data.txt" , "r")
  read_file = file.read
  puts read_file
  file.close
end


while true
  puts "実施したい処理を選択してください
  1:評価ポイントとコメントを入力する
  2:今までの結果を確認する
  3:終了する"

  select = gets.to_i

  case select

  when 1
    input
  when 2
    read
  when 3
    puts "終了します"
    break
  else
    puts "1から3で入力してください"
  end
end














