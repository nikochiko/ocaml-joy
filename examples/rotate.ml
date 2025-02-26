open Joy

let max = 32.
let rec range a b = if a > b then [] else a :: range (a +. 1.) b

let _ =
  init ();
  background (255, 255, 255, 255);
  let rect = rectangle 100 100 in
  let nums = range 0. max in
  let rotated =
    List.map (fun i -> rotate (int_of_float (i /. max *. 360.0)) rect) nums
  in
  set_color (0, 0, 0);
  show rotated;
  write ~filename:"rotation.png" ()
