@a@
identifier f,x;
@@
-static f(...){return platform_driver_register(&x);}

@b depends on a@
identifier e,a.x;
@@
-static e(...){platform_driver_unregister(&x);}
@c depends on a && b@
identifier a.f;
declarer name module_init;
@@
-module_init(f);

@d depends on a && b && c@
identifier b.e, a.x;
declarer name module_exit;
declarer name module_paltform_driver;
@@
-module_exit(e);
+module_paltform_driver(x);
