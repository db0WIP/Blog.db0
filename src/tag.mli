(* ************************************************************************** *)
(* Project: Blog.db0, Blog module for Ocsigen                                 *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Blog.db0        *)
(* ************************************************************************** *)
(** Tags are special keywords associated to the articles to help searching.   *)
(** The Tag module provide tools to manipulate Tags.                          *)

type t = string

(** Get the tags of an article using its id                                   *)
val get : int -> t list

(** Get the articles ids from a tag                                           *)
val articles : t -> int list

(** Get the most used tags and the quantity of articles that have this tag,   *)
(**   ordered by quantity.                                                    *)
val best : ?limit:int -> unit -> (t * int) list

