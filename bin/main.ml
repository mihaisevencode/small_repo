let limit = 1_000_000

let get_random_string () =
  Random.self_init ();
  Int64.to_string @@ Random.bits64 ()
;;

let () =
  let out_channel = open_out "data.txt" in
  for _i = 0 to limit do
    let message = get_random_string () in
    Printf.fprintf out_channel "%s\n" message
  done;
  close_out out_channel
;;
