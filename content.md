% Pandoc
% Christian Groll
% March 16, 2015

# Basic requirements

## Mathematical formulas

Inline math:

$$C(u_{1},u_{2})=\left( u_{1}^{-\theta} + u_{2}^{-\theta} -1
\right)^{-\frac{1}{\theta}}$$

$$0<\theta$$

##

Math environment:

$$\begin{aligned}
h(u_{1},u_{2})&=\frac{\partial C(u_{1},u_{2})}{\partial u_{2}}\\
&=-\frac{1}{\theta}(-\theta)u_{2}^{-\theta-1}\left( u_{1}^{-\theta} +
u_{2}^{-\theta} -1 \right)^{-\frac{1}{\theta}-1} \\
&=u_{2}^{-\theta-1}\left( u_{1}^{-\theta} +
u_{2}^{-\theta} -1 \right)^{-\frac{1}{\theta}-1}
\end{aligned}$$

## Citation

This was said by
[@rv_balak_lai_2009_continuous_bivariate_distributions] in their
famous paper. While this was said in
[@rv_aas_czad_pair_copula_constructions_multiple_dependence]. 


## Code block

In Julia, you write

```julia
function getThis(x::Array{Float64, 1})
	return x.this
end
```

## Internet image

![Cinque
terre](http://4.bp.blogspot.com/-qpzAqakab6o/Td6Zeu68uoI/AAAAAAAAijg/7xOvkmrL3yI/s1600/Vernazza%252C+Cinque+Terre%252C+Liguria%252C+Italy%255B1%255D.jpg
= 250x250)

## Better rescaling...

...using raw html. Not shown in LaTeX.

<img src="http://4.bp.blogspot.com/-qpzAqakab6o/Td6Zeu68uoI/AAAAAAAAijg/7xOvkmrL3yI/s1600/Vernazza%252C+Cinque+Terre%252C+Liguria%252C+Italy%255B1%255D.jpg" width="200" height="200" />

## References

> Footnotes possible? [^1] Not in reveal.js.
>
> [^1]: this is a footnote

## Slide with a pause

content before the pause

. . .

content after the pause

## Speaker notes

Notes should not be visible to audience.
<div class="notes">
This is my note.

- It can contain markdown
- like this list

</div>


## Theorems

## Table of contents

## Numbered chapters


# Rich media content

## Video

<iframe width="420" height="315" src="https://www.youtube.com/embed/D0k3x8sG83o" frameborder="0" allowfullscreen></iframe>


## Embedded d3 chart

<iframe allowtransparency="true" style="background: white;" width="1200" height="600" src="http://bl.ocks.org/cgroll/raw/94e79c350c04ca6b8af6/" frameborder="0" allowfullscreen></iframe>


## 

*Local d3 chart: bar chart*

<p>This example contains the bare minimum includes and markup required to run a reveal.js presentation.</p>
<svg class="chart"></svg>

##
*Local d3 chart: bubble chart*

<p>There's no theme included, so it will fall back on browser defaults.</p>
<svg class="bubleCharts"></svg>

## Breakfast

- Eat eggs
- Drink coffee

# In the evening

## Dinner

- Eat spaghetti
- Drink wine

------------------


## Going to sleep

- Get in bed
- Count sheep

## Literature references
