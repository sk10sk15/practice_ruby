//ボタンをクリックしたら、カレンダー表示する
// window.onload = function(){
//   document.getElementById("bottun").onclick = function() {
//     const weeks = ['日', '月', '火', '水', '木', '金', '土'];
//     console.log(weeks);
//   };
// }

const weeks = ['日', '月', '火', '水', '木', '金', '土'];
const date = new Date()
const year = date.getFullYear()
const month = date.getMonth()
const startDate = new Date(year, month, 1) // 月の最初の日を取得
const endDate = new Date(year, month + 1,  0) // 月の最後の日を取得, 0は前月の末日になるようだ
console.log(month);
console.log(startDate);
console.log(endDate);
const endDayCount = endDate.getDate() // 月の末日
console.log(endDayCount);
const startDay = startDate.getDay() // 月の最初の日の曜日を取得
let dayCount = 1 // 日にちのカウント
let calendarHtml = '' // HTMLを組み立てる変数
calendarHtml += '<h1>' + year  + '/' + month + '</h1>'
calendarHtml += '<table>'
// 曜日の行を作成
for (let i = 0; i < weeks.length; i++) { //0〜6ならおk　つまり7個
    calendarHtml += '<td>' + weeks[i] + '</td>'
}
for (let w = 0; w < 6; w++) { //6週目があるから
    calendarHtml += '<tr>'

    for (let d = 0; d < 7; d++) { //1週あたり7日しかないから0〜6
        if (w == 0 && d < startDay) { // 1行目で1日の曜日の前 空白のやつ。初日まで空白ですよ〜。
            calendarHtml += '<td></td>'
        } else if (dayCount > endDayCount) { // 32 > 31とかね。　末日以降も空白ですよ〜。
            calendarHtml += '<td></td>'
        } else {
            calendarHtml += '<td>' + dayCount + '</td>' //これは通常のやつ。2, 3, 4とdayCountする。ループ。
            dayCount++
        }
    }
    calendarHtml += '</tr>'
}
window.onload = function(){
  document.getElementById("calendar").onclick = function() {
    calendar = document.querySelector("#calendar").innerHTML;
  };
}