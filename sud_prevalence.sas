/***************************************************************************************************/
/* This programe is used to estimate the prevelence based on suddsm dataset. You need run the      */
/* SUDDSM.sas first                                                                                */
/***************************************************************************************************/





%macro changelevel (var1, var2, var3);
  if &var1 = 0 then &var2 =0;
 else &var2 =1;
  if &var1 <=1 then &var3 =0;
 else &var3 =1;
%mend;

data suddsm1;
set suddsm;
x_alcuse4 = max(of x_alcdep4, x_alcab4);
x_seduse4 = max(of x_seddep4,x_sedabuse4);
x_opuse4 = max(of x_opdep4,x_opabuse4);
x_mause4 = max(of x_madep4,x_maabuse4);
x_cocuse4 = max(of x_cocdep4,x_cocabuse4);
x_stiuse4 = max(of x_stidep4,x_stiabuse4);
x_heruse4 = max(of x_herdep4,x_herabuse4);
x_haluse4 = max(of x_haldep4,x_halabuse4);
x_clbuse4 = max(of x_clbdep4,x_clbabuse4);
x_soluse4 = max(of x_soldep4,x_solabuse4);
x_othuse4 = max(of x_othdep4,x_othabuse4);

x_anyuse_noalc4 = max(of x_seduse4,x_opuse4,x_mause4,x_cocuse4,x_stiuse4,x_heruse4,x_haluse4,x_clbuse4,x_soluse4,x_othuse4);
x_anydep_noalc4 = max(of x_seddep4,x_opdep4,x_madep4,x_cocdep4,x_stidep4,x_herdep4,x_haldep4,x_clbdep4,x_soldep4,x_othdep4);

x_anyuse4 = max(of x_anyuse_noalc4, x_alcuse4);
x_anydep4 = max(of x_anydep_noalc4, x_alcdep4);

x_lifealcuse4 = max(of x_lifealcdep4, x_lifealcab4);
x_lseduse4 = max(of x_lseddep4,x_lsedabuse4);
x_lopuse4 = max(of x_lopdep4,x_lopabuse4);
x_lmause4 = max(of x_lmadep4,x_lmaabuse4);
x_lcocuse4 = max(of x_lcocdep4,x_lcocabuse4);
x_lstiuse4 = max(of x_lstidep4,x_lstiabuse4);
x_lheruse4 = max(of x_lherdep4,x_lherabuse4);
x_lhaluse4 = max(of x_lhaldep4,x_lhalabuse4);
x_lclbuse4 = max(of x_lclbdep4,x_lclbabuse4);
x_lsoluse4 = max(of x_lsoldep4,x_lsolabuse4);
x_lothuse4 = max(of x_lothdep4,x_lothabuse4);

x_lanyuse_noalc4 = max(of x_lseduse4,x_lopuse4,x_lmause4,x_lcocuse4,x_lstiuse4,x_lheruse4,x_lhaluse4,x_lclbuse4,x_lsoluse4,x_lothuse4);
x_lanydep_noalc4 = max(of x_lseddep4,x_lopdep4,x_lmadep4,x_lcocdep4,x_lstidep4,x_lherdep4,x_lhaldep4,x_lclbdep4,x_lsoldep4,x_lothdep4);

x_lanyuse4 = max(of x_lanyuse_noalc4, x_lifealcuse4);
x_lanydep4 = max(of x_lanydep_noalc4, x_lifealcdep4);

x_anyud5sev_noalc = max(of x_sedud5sev,x_opud5sev,x_maud5sev,x_cocud5sev,x_stiud5sev,x_herud5sev,x_halud5sev,x_clbud5sev,x_solud5sev,x_othud5sev);
x_anyud5sev = max(of x_anyud5sev_noalc, x_pyaud5sev);

x_lifeaud5sev = max(of x_pyaud5sev, x_ppyaud5sev);
x_lsedud5sev = max(of x_sedud5sev,x_psedud5sev);
x_lopud5sev = max(of x_opud5sev,x_popud5sev);
x_lmaud5sev = max(of x_maud5sev,x_pmaud5sev);
x_lcocud5sev = max(of x_cocud5sev,x_pcocud5sev);
x_lstiud5sev = max(of x_stiud5sev,x_pstiud5sev);
x_lherud5sev = max(of x_herud5sev,x_pherud5sev);
x_lhalud5sev = max(of x_halud5sev,x_phalud5sev);
x_lclbud5sev = max(of x_clbud5sev,x_pclbud5sev);
x_lsolud5sev = max(of x_solud5sev,x_psolud5sev);
x_lothud5sev = max(of x_othud5sev,x_pothud5sev);



x_lanyud5sev_noalc = max(of x_lsedud5sev,x_lopud5sev,x_lmaud5sev,x_lcocud5sev,x_lstiud5sev,x_lherud5sev,x_lhalud5sev,x_lclbud5sev,x_lsolud5sev,x_lothud5sev);
x_lanyud5sev = max(of x_lanyud5sev_noalc, x_lifeaud5sev);

%changelevel(x_sedud5sev, x_sedud5sev1,x_sedud5sev2);
%changelevel(x_opud5sev,x_opud5sev1,x_opud5sev2);
%changelevel(x_maud5sev,x_maud5sev1,x_maud5sev2);
%changelevel(x_cocud5sev,x_cocud5sev1,x_cocud5sev2);
%changelevel(x_stiud5sev,x_stiud5sev1,x_stiud5sev2);
%changelevel(x_herud5sev,x_herud5sev1,x_herud5sev2);
%changelevel(x_pyaud5sev,x_pyaud5sev1,x_pyaud5sev2);
%changelevel(x_anyud5sev_noalc,x_anyud5sev_noalc1,x_anyud5sev_noalc2);
%changelevel(x_anyud5sev,x_anyud5sev1,x_anyud5sev2);



%changelevel(x_lsedud5sev, x_lsedud5sev1,x_lsedud5sev2);
%changelevel(x_lopud5sev,x_lopud5sev1,x_lopud5sev2);
%changelevel(x_lmaud5sev,x_lmaud5sev1,x_lmaud5sev2);
%changelevel(x_lcocud5sev,x_lcocud5sev1,x_lcocud5sev2);
%changelevel(x_lstiud5sev,x_lstiud5sev1,x_lstiud5sev2);
%changelevel(x_lherud5sev,x_lherud5sev1,x_lherud5sev2);
%changelevel(x_lifeaud5sev,x_lifeaud5sev1,x_lifeaud5sev2);
%changelevel(x_lanyud5sev_noalc,x_lanyud5sev_noalc1,x_lanyud5sev_noalc2);
%changelevel(x_lanyud5sev,x_lanyud5sev1,x_lanyud5sev2);


run;
/*current DSM-IV dependence prevalence */
proc surveyfreq data =suddsm1;
tables x_anydep4 x_alcdep4 x_anydep_noalc4 x_seddep4 x_opdep4 x_madep4 x_cocdep4 x_stidep4   x_herdep4/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;
/*current DSM-IV dependence or use disorder prevalence */

proc surveyfreq data =suddsm1;
tables x_anyuse4 x_alcuse4 x_anyuse_noalc4 x_seduse4 x_opuse4 x_mause4 x_cocuse4 x_stiuse4   x_heruse4/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;

/*lifetime DSM-IV dependence prevalence */

proc surveyfreq data =suddsm1;
tables x_lanydep4 x_lifealcdep4 x_lanydep_noalc4 x_lseddep4 x_lopdep4 x_lmadep4 x_lcocdep4 x_lstidep4   x_lherdep4/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;
/*lifetime DSM-IV dependence or use disorder prevalence */


proc surveyfreq data =suddsm1;
tables x_lanyuse4 x_lifealcuse4 x_lanyuse_noalc4 x_lseduse4 x_lopuse4 x_lmause4 x_lcocuse4 x_lstiuse4   x_lheruse4/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;


/*current DSM-V 2-3 criteria prevalence */
proc surveyfreq data =suddsm1;
tables x_anyud5sev x_pyaud5sev x_anyud5sev_noalc x_sedud5sev x_opud5sev x_maud5sev x_cocud5sev x_stiud5sev   x_herud5sev/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;

/*current DSM-V 4+ criteria prevalence */
proc surveyfreq data =suddsm1;
tables x_anyud5sev2 x_pyaud5sev2 x_anyud5sev_noalc2 x_sedud5sev2 x_opud5sev2 x_maud5sev2 x_cocud5sev2 x_stiud5sev2   x_herud5sev2/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;


/*current DSM-V 2+ criteria prevalence */
proc surveyfreq data =suddsm1;
tables x_anyud5sev1 x_pyaud5sev1 x_anyud5sev_noalc1 x_sedud5sev1 x_opud5sev1 x_maud5sev1 x_cocud5sev1 x_stiud5sev1   x_herud5sev1/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;

/*lifetime DSM-V 2-3 criteria prevalence */
proc surveyfreq data =suddsm1;
tables x_lanyud5sev x_lifeaud5sev x_lanyud5sev_noalc x_lsedud5sev x_lopud5sev x_lmaud5sev x_lcocud5sev x_lstiud5sev   x_lherud5sev/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;

/*lifetime DSM-V 4+ criteria prevalence */
proc surveyfreq data =suddsm1;
tables x_lanyud5sev2 x_lifeaud5sev2 x_lanyud5sev_noalc2 x_lsedud5sev2 x_lopud5sev2 x_lmaud5sev2 x_lcocud5sev2 x_lstiud5sev2   x_lherud5sev2/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;


/*lifetime DSM-V 2+ criteria prevalence */
proc surveyfreq data =suddsm1;
tables x_lanyud5sev1 x_lifeaud5sev1 x_lanyud5sev_noalc1 x_lsedud5sev1 x_lopud5sev1 x_lmaud5sev1 x_lcocud5sev1 x_lstiud5sev1   x_lherud5sev1/col row;
strata VARSTRAT;
cluster VARUNIT;
weight AUDWEIGHT;
run;
