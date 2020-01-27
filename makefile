report2019.pdf: report.dvi
	dvipdfmx -p a4 report.dvi

report.dvi: report.tex sec2.tex Figs/fig1.eps Figs/fig2.eps Figs/fig3.eps
	platex  report.tex

Figs/fig1.eps: Figs/sample.svgz
	inkscape -z -f Figs/sample.svgz -E Figs/fig1.eps
Figs/fig2.eps: Figs/probe.svgz
	inkscape -z -f Figs/probe.svgz -E Figs/fig2.eps
Figs/fig3.eps: Figs/ut_setup.svgz
	inkscape -z -f Figs/ut_setup.svgz -E Figs/fig3.eps



