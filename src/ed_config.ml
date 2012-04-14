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

(** Some configuration stuff of the editor. *)

let glade_file =
  let name = "chamo.glade" in
  let files =
    [
      name ;
      Filename.concat "editor" name ;
      Filename.concat Cam_installation.glade_dir name ;
    ]
  in
  let rec iter = function
      [] -> assert false
    | h :: q ->
        if Sys.file_exists h then h else iter q
  in
  iter files

let local_dir_rc_file_prefix = ".chamo."
let local_dir_rc_file name = ".chamo." ^ name

let rc_file s = Filename.concat Ed_installation.rc_dir ("chamo."^s)

let key_state_wrappers = Config_file.list_wrappers Configwin.key_cp_wrapper

let binding_wrappers =
  Config_file.tuple2_wrappers
    key_state_wrappers
    Config_file.string_wrappers
