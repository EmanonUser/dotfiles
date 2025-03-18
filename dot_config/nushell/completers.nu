let fish_completer = {|spans|
    fish --command $'complete "--do-complete=($spans | str join " ")"'
    | from tsv --flexible --noheaders --no-infer
    | rename value description
}

let carapace_completer = {|spans|
    carapace $spans.0 nushell ...$spans | from json
}

let zoxide_completer = {|spans|
    let expanded_alias = (scope aliases 
      | where name == $spans.0 
      | get -i 0 
      | get -i expansion)

    let spans = (if $expanded_alias != null  {
      $spans | skip 1 
      | prepend ($expanded_alias 
      | split row " " 
      | take 1)
    } else { $spans })
    

    $spans 
    | skip 1 
    | zoxide query -l ...$in 
    | lines 
    | where {|x| $x != $env.PWD}
    | each {|path|
      if ($path | str contains " ") {
        $"\"($path)\""
      } else {
       $path
    }
  }
}

let external_completer = {|spans|
    let expanded_alias = scope aliases
    | where name == $spans.0
    | get -i 0.expansion

    let spans = if $expanded_alias != null {
        $spans
        | skip 1
        | prepend ($expanded_alias | split row ' ' | take 1)
    } else {
        $spans
    }

    match $spans.0 {
        __zoxide_z | __zoxide_zi | cd | z => $zoxide_completer
        _ => $carapace_completer
    } | do $in $spans
}

$env.config = {
    completions: {
        external: {
            enable: true
            completer: $external_completer
        }
    }
}
