val supported_commands : string list
(** [supported_commands] is a list of all the LSP commands that are supported by the server. *)

val handle_execute_request :
  RPC_server.t ->
  string ->
  Yojson.Safe.t list ->
  Yojson.Safe.t option * RPC_server.t
(** [handle_execute_request server command args] handles an LSP Command, and returns a response option, and updated server.
    LSP Commands are usually triggered through code actions, such as autofix, or ignoring findings. *)
