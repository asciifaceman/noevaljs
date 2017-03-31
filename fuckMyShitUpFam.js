/**
  * fuckMyShitUpFam - For when you are just tired of eval()
  *
  *
  */

module.exports = function() {
  global.ಠ_ಠ = eval;
  delete this.eval;
}