(* ************************************************************************** *)
(* Project: Blog.db0, Blog module for Ocsigen                                 *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Blog.db0        *)
(* ************************************************************************** *)
(** All the useful functions to display your blog are in this module          *)

type div = Html5_types.div Eliom_content.Html5.D.elt

(** Generate a div containing all the blog                                    *)
val blog : ?path:Pathname.t -> div
