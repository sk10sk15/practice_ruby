//表示するボタン
function clickBtn1() {
  const ta1 = document.form1.textarea1.value; //取得
  const ta2 = document.form1.textarea2.value; //取得
  if (ta2 === 0 || ta2 > 12 || ta2 < 1 || ta1 <= 0) {
    document.getElementById("span0").textContent = "エラーです"
    $(`.date`).remove();
  }
  else {
    document.getElementById("span1").textContent = ta1;　//取得したものをspanの中へ
    document.getElementById("span2").textContent = ta2;　//取得したものをspanの中へ
  }
}
//クリアボタン
function clickBtn2(){
  document.getElementById("span0").textContent = "";
  document.getElementById("span1").textContent = "";
	document.getElementById("span2").textContent = "";
  document.form1.textarea1.value = "";
  document.form1.textarea2.value = "";
}