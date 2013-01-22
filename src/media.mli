(* ************************************************************************** *)
(* Project: Blog.db0, Blog module for Ocsigen                                 *)
(* Author: db0 (db0company@gmail.com, http://db0.fr/)                         *)
(* Latest Version is on GitHub: https://github.com/db0company/Blog.db0        *)
(* ************************************************************************** *)
(** The Media module provide tools to manipulate medias like images, videos   *)

(* ************************************************************************** *)
(* Size Module                                                                *)
(* ************************************************************************** *)

module type SIZE =
sig
  type size =
    | Percent of int
    | Pixels of int
  type t =
    {
      width: size;
      height: size;
    }
  val wstr : t -> string
  val hstr : t -> string
end

module Size : SIZE

type media =
  | Image
  | Video
  | Sound
  | Embedded

type display =
  | Center
  | Right
  | Left
  | Inline

type t =
  {
    mtype   : media;
    path    : Pathname.t;
    display : display;
    size    : Size.t;
  }

(** Get the media information using the id                                   *)
val get : string -> media


