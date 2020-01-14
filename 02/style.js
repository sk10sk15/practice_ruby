function clickBtn1() {
  const ta1 = document.form1.textarea1.value; //取得
  document.getElementById("span1").textContent = ta1;　//取得したものをspanの中へ
  const ta2 = document.form1.textarea2.value; //取得
  document.getElementById("span2").textContent = ta2;　//取得したものをspanの中へ
}