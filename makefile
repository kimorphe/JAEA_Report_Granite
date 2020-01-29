report2019.pdf: report.dvi
	dvipdfmx -p a4 report.dvi

report.dvi: report.tex sec2.tex sec3.tex Figs/fig1.eps Figs/fig2.eps Figs/fig3.eps Figs/fig4.eps Figs/fig5.eps Figs/fig5_2.eps Figs/fig5_3.eps Figs/fig6.eps Figs/fig7.eps Figs/fig8.eps Figs/fig9.eps  Figs/fig10.eps
	platex  report.tex

Figs/fig1.eps: Figs/sample.svgz
	inkscape -z -f Figs/sample.svgz -E Figs/fig1.eps
Figs/fig2.eps: Figs/probe.svgz
	inkscape -z -f Figs/probe.svgz -E Figs/fig2.eps
Figs/fig3.eps: Figs/ut_setup.svgz
	inkscape -z -f Figs/ut_setup.svgz -E Figs/fig3.eps
Figs/fig4.eps: Figs/tr_config.svgz
	inkscape -z -f Figs/tr_config.svgz -E Figs/fig4.eps
Figs/fig5.eps: Figs/inwv.svgz
	inkscape -z -f Figs/inwv.svgz -E Figs/fig5.eps

Figs/fig5_2.eps: Figs/bscan_raw1.svgz
	inkscape -z -f Figs/bscan_raw1.svgz -E Figs/fig5_2.eps
Figs/fig5_3.eps: Figs/bscan_raw2.svgz
	inkscape -z -f Figs/bscan_raw2.svgz -E Figs/fig5_3.eps
Figs/fig6.eps: Figs/bscn0.eps
	cp Figs/bscn0.eps Figs/fig6.eps
Figs/fig7.eps: Figs/bfft0.eps
	cp Figs/bfft0.eps Figs/fig7.eps
Figs/fig8.eps: Figs/ascn0.eps
	cp Figs/ascn0.eps Figs/fig8.eps
Figs/fig9.eps: Figs/afft0.eps
	cp Figs/afft0.eps Figs/fig9.eps
Figs/fig10.eps: Figs/phs0.eps
	cp Figs/phs0.eps Figs/fig10.eps

