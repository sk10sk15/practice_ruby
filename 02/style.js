//ボタンをクリックしたら、カレンダー表示する
window.onload = function(){
  document.getElementById("bottun").onclick = function() {
    const weeks = ['日', '月', '火', '水', '木', '金', '土'];
    console.log(weeks);
  };
}

const weeks = ['日', '月', '火', '水', '木', '金', '土'];
const date = new Date()
const year = date.getFullYear()
const month = date.getMonth()
const startDate = new Date(year, month, 1) // 月の最初の日を取得
const endDate = new Date(year, month + 1,  0) // 月の最後の日を取得, 0は前月の末日になるようだ
console.log(month);
console.log(startDate);
console.log(endDate);