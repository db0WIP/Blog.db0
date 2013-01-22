(* ************************************************************************** *)
(* Project: Blog.db0, Blog module for Ocsigen                                 *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Blog.db0        *)
(* ************************************************************************** *)
(** The Article module provide tools to manipulate articles.                  *)

type status =
  | Published
  | Draft

type div = Html5_types.div Eliom_content.Html5.D.elt

type t =
    {
      id         : int;
      title      : string;
      date       : CalendarLib.Calendar.t;
      content    : string;
      html       : div;
      medias     : Media.t list;
      status     : status;
      tags       : Tag.t list;
      categories : Category.t list;
    }

(** Get the article corresponding to the given id.                           *)
(** The given function to_html todo *)
val get : ?to_html:(string -> div) -> int -> t

(** Get all the articles in the given category                               *)
val by_category : Category.t -> t list

(** Get all the articles that have the given tag                             *)
val by_tag : Tag.t -> t list

(** Add a new article in the database                                        *)
val add : title:string -> content:string -> ?category:(Category.t list)
  -> ?medias:(Media.t list) -> ?status:(status) -> ?tags:(Tag.t list)
  -> unit -> t

