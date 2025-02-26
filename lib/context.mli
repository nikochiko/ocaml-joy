type context = {
  ctx : Cairo.context;
  surface : Cairo.Surface.t;
  size : int * int;
  axes : bool;
}

val context : context option ref
val fail : unit -> unit

exception Context of string

val init_context : float -> int * int -> bool -> unit
val resolution : unit -> int * int
val set_color : int * int * int -> unit
val background : int * int * int * int -> unit
val set_line_width : int -> unit
val write : context -> string -> unit
val save : unit -> unit
val restore : unit -> unit
