(* ************************************************************************** *)
(* Project: Blog.db0, Blog module for Ocsigen                                 *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Blog.db0        *)
(* ************************************************************************** *)
(** Blog's articles are sorted using categories.                              *)
(** The Category module provide tools to manipulate categories.               *)

type t =
    {
      id   : int;
      name : string;
    }

(** Get the list of all available categories                                  *)
val get : unit -> t list

(** Return a category without modifying the database                          *)
val create : int -> string -> t

(** Add a new category in the database                                        *)
val add : string -> t



