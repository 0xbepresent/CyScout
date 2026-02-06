/**
 * @name FunctionTree
 * @description Extract all function definitions
 */

import codeql.solidity.ast.internal.TreeSitter

from Solidity::FunctionDefinition func
where exists(func.getName())
select 
  func.getName().getValue(),
  func.getLocation().getFile().getRelativePath(),
  func.getLocation().getStartLine(),
  func.toString(),
  func.getLocation().getEndLine()
