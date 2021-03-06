(*********************************************************************************)
(*                Chamo                                                          *)
(*                                                                               *)
(*    Copyright (C) 2003-2012 Institut National de Recherche en Informatique     *)
(*    et en Automatique. All rights reserved.                                    *)
(*                                                                               *)
(*    This program is free software; you can redistribute it and/or modify       *)
(*    it under the terms of the GNU Lesser General Public License version        *)
(*    3 as published by the Free Software Foundation.                            *)
(*                                                                               *)
(*    This program is distributed in the hope that it will be useful,            *)
(*    but WITHOUT ANY WARRANTY; without even the implied warranty of             *)
(*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              *)
(*    GNU General Public License for more details.                               *)
(*                                                                               *)
(*    You should have received a copy of the GNU General Public License          *)
(*    along with this program; if not, write to the Free Software                *)
(*    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA                   *)
(*    02111-1307  USA                                                            *)
(*                                                                               *)
(*    Contact: Maxence.Guesdon@inria.fr                                          *)
(*                                                                               *)
(*********************************************************************************)

(** Configuration of the "multiclip" view. *)

(** Name of the view. *)
val factory_name : string

(** The user's configuration file. *)
val rc_file : string

(** Key bindings of the view. *)
val key_bindings : (Okey.keyhit_state * string) Config_file.list_cp

(** Read the configuration file. *)
val read : unit -> unit

(** Write the configuration file. *)
val write : unit -> unit

(** This function add a key binding for the view, described by a
     combination of key hits and an associated command name. *)
val add_multiclip_key_binding : Okey.keyhit_state -> string -> unit

(** Same as {!add_multiclip_key_binding} but the combination of
     key hits is given as a string. *)
val add_multiclip_key_binding_string : string -> string -> unit

