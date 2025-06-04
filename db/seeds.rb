g1 = GachaItem.create(name: "SyntaxError",
                      body: "文法ミスに厳しい先生。テストでendや,を書き忘れたらバツにされた。しかし、厳しい反面生徒からは信頼されている。授業はいつも静まりかえっているが、実は隠れファンも多い")

g1.image.attach(
  io: File.open(Rails.root.join("db/seed_images/SyntaxError.png")),
  filename: "SyntaxError.png"
)

g2 = GachaItem.create(name: "TypeError/NoMethodError",
                     body: "よく忘れ物をする白衣の先生。昨日も生徒のnameが載っている出席簿を忘れて困っていた。文字列と整数型には厳しい。.to_s や .to_iが好き。話すときは早口で、眼鏡はいつもズレている")

g2.image.attach(
  io: File.open(Rails.root.join("db/seed_images/TypeError.png")),
  filename: "TypeError.png"
               )

g3 = GachaItem.create(name: "TemplateError",
                     body: "舞台上(view)でしか見ない演劇部の子。TypeError/NoMethodError先生の子供という噂もあるけど、本当の所はわからない。セリフを飛ばすとたちまち不機嫌になるが、舞台の上では誰よりも輝く")

g3.image.attach(
io: File.open(Rails.root.join("db/seed_images/TemplateError.png")),
filename: "TemplateError.png"
         )

g4 = GachaItem.create(name: "RoutingError",
                     body: "真面目な女の子、だけど方向音痴。地図にない場所にアクセスしようとして迷子になるのが日常茶飯事。クラスではルート案内役なのに、自分のルートだけ間違えてしまう。『そのパス、本当に作った？』が口癖")

g4.image.attach(
io: File.open(Rails.root.join("db/seed_images/RoutingError.png")),
filename: "RoutingError.png"
)

g5 = GachaItem.create(name: "ParameterMissing",
                     body: "毎日のように誰かから手紙を受け取るけど、宛名が書いてなくて戸惑っている女の子。『これ、私へのお願いで合ってるの？』と首をかしげる姿が印象的。几帳面で優しいが、渡す側に少し厳しいところがある")

g5.image.attach(
io: File.open(Rails.root.join("db/seed_images/ParameterMissing.png")),
filename: "ParameterMissing.png"
)

g6 = GachaItem.create(name: "NameError",
                     body: "真面目な学級委員長。`User` を `Usre` と書いた生徒を見つけると即座に赤ペン修正。『正しい名前を覚えるのが礼儀です！』と叱る。少し堅いけど、みんなの名前を完璧に覚えていて、頼られる存在")

g6.image.attach(
io: File.open(Rails.root.join("db/seed_images/NameError.png")),
filename: "NameError.png"
)
