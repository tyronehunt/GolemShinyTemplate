<div class = "col-sm-12">

<style>
summary:focus { 
outline: none 
}
</style>

<h2>The title using h2 tag</h2>

<p>This page is rendered in a .md file and written in HTML.</p>

<p><em>About App:</em> This package copies the infrastructure of TidyTuesday, a data project in R. Find more about this project on the <a href="https://github.com/rfordatascience/tidytuesday">GitHub repo</a>. 

<p>If you want to include code text, do so with <code>mtcars</code> for datasets, or with packages like so <code>{ggplot2}</code>. </p>

<p>You can include links to other pages with JS section:</p>

<ul>

<li><a href = "javascript:void(0)" onclick = "geom_point()">geom_point generator</a></li>
<li> <a href = "javascript:void(0)" onclick = "geom_hist()">geom_hist generator</a></li>
<li> <a href = "javascript:void(0)" onclick = "geom_boxplot()">geom_boxplot generator</a></li>
<li> <a href = "javascript:void(0)" onclick = "geom_bar()">geom_bar generator</a></li>

</ul>

<script>
function geom_point() {
  $("a[data-value ='geom_point'").click()
}
function geom_hist() {
  $("a[data-value ='geom_hist'").click()
}
function geom_boxplot() {
  $("a[data-value ='geom_boxplot'").click()
}
function geom_bar() {
  $("a[data-value ='geom_bar'").click()
}
</script>


<details>
<summary>Use the details and summary tags to create an expandable list</summary>

<li> item2 - description2</li>
<li> item3 - description3</li>
<li> item4 - description4</li>
<li> item5 - description5</li>
<li> item6 - description6</li>
<li> item7 - description7</li>

</details>
</div>