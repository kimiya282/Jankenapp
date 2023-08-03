def janken
puts"じゃんけん..."
puts "0(グー)1(チョキー)2(パー)3(戦わない)"

my_hand = gets.to_i

 if my_hand== 3
  puts"ゲームを終了します"
  exit
 elsif my_hand> 3
  puts"正しい値を入力してください"
  return janken
 end  

enemy_hand =rand(3)
hako =["グー","チョキ","パー"]
  
    puts "ホイ！"
    puts "あなた:#{hako[my_hand]}を出しました"
    puts "相手:#{hako[enemy_hand]}を出しました"
    puts"--------------"
    @J_hantei ="win"

    if my_hand == enemy_hand 
        puts "あいこで〜"
        janken
    elsif (my_hand == 0 && enemy_hand == 1)||(my_hand == 1 && enemy_hand == 2)||(my_hand ==2 && enemy_hand == 0)
    @J_hantei ="win"
        return acchimuite_hoi
        
    elsif (my_hand == 1 && enemy_hand == 0)||(my_hand == 2 && enemy_hand == 1)||(my_hand == 0 && enemy_hand == 2)
    @J_hantei ="lose"
        return acchimuite_hoi
    else
        puts"終わり"
    end
end

def acchimuite_hoi
puts"あっち向いて〜"
puts"0(上)1(下)2(左)3(右)" 
my_chose = gets.to_i
direction = ["上","下","左","右"]
puts"ホイ！"

enemy_direction = rand(4)
puts"あなた：#{direction[my_chose]}"
puts"相手：#{direction[enemy_direction]}"
 puts "---------------------"
 
 if (my_chose == enemy_direction) && (@J_hantei == "win")
     puts "あなたの勝ちです。"
 elsif (enemy_direction == my_chose) && (@J_hantei == "lose")
     puts "あなたの負けです。"
 else
     return janken
 end
end
janken