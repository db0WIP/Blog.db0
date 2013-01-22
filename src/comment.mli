(* ************************************************************************** *)
(* Project: Blog.db0, Blog module for Ocsigen                                 *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Blog.db0        *)
(* ************************************************************************** *)
(** Blog's articles can be commented. Module to manipulate comments.          *)

type t =
    {
      author  : string;
      content : string;
      date    : CalendarLib.Calendar.t;
    }

(** Get the comments associated with the given article id.                    *)
val get : int -> t list
