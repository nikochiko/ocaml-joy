open Joy

let () =
  init ();
  background (1., 1., 1., 1.);
  (* creating a rectangle from points *)
  let rect = rectangle 100. 200. in
  set_color (0., 0., 0.);
  render rect;
  write ~filename:"rectangle.png" ()
