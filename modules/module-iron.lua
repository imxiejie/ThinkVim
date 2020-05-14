local iron = require('iron')

iron.core.add_repl_definitions {
  go = {
    gore = {
      command = {"gore"}
    }
  }
}

iron.core.set_config {
  preferred = {
    go = "gore",
    python = "ipython",
    typescript.ts = "ts-node",
    javascript = "node"
  }
}
