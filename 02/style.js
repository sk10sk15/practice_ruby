//表示するボタン
function clickBtn1() {
  const ta1 = document.form1.textarea1.value; //取得
  const ta2 = document.form1.textarea2.value; //取得
  const date = new Date()
  const weeks = ['日', '月', '火', '水', '木', '金', '土'];

  if (ta2 === 0 || ta2 > 12 || ta2 < 1 || ta1 <= 0) {
    document.getElementById("span0").textContent = "エラーです"
    $(`.date`).remove();
  }
  else {
    document.getElementById("span1").textContent = ta1;　//取得したものをspanの中へ
    document.getElementById("span2").textContent = ta2;　//取得したものをspanの中へ
    //ここにカレンダー表記できるコードを書きたい。
    
    //入力された年月を取得する
    const year = Number(ta1);
    console.log(year);
    const month = Number(ta2);
    console.log(month);
    
    //startDateに入れる
    const startDate = new Date(year, month - 1 , 1);
    const endDate = new Date(year, month, 0);
    
    // 月の末日 日数カウント
    const endDayCount = endDate.getDate() 
    //console.log(endDayCount);
    
    const startDay = startDate.getDay()
    //日にちのカウント
    let dayCount = 1
    let calendarHtml = '' // HTMLのある特定の場所を指定したい。
    
    
    for (let w = 0; w < 6; w++) { // 6週目があるから
      for (let d = 0; d < 7; d++) { // 1週あたり7日しかないから0〜6
        if (w == 0 && d < startDay) { // 1行目で1日の曜日の前 空白のやつ。初日まで空白ですよ〜。

        } else if (dayCount > endDayCount - 1) { // 32 > 31とかね。　末日以降も空白ですよ〜。

        } else {
          document.querySelectorAll("tr")[w + 1].querySelectorAll("td")[d].textContent = dayCount
          dayCount++
        }
      }
    }
    
    
  }
}












//クリアボタン
function clickBtn2(){
  document.getElementById("span0").textContent = "";
  document.getElementById("span1").textContent = "";
	document.getElementById("span2").textContent = "";
  document.form1.textarea1.value = "";
  document.form1.textarea2.value = "";
  document.querySelectorAll("td").textContent = "";
}
