var should = require('chai').should(),
    expect = require('chai').expect(),
    scapegoat = require('../fuckMyShitUpFam')(),
    assert = require('assert');

describe('ಠ_ಠ', function() {
  it ('makes disapprove face', function() {
    assert.equal(2, ಠ_ಠ(1+1));
  });
  it ('praises the sun', function() {
    assert.equal(true, ಠ_ಠ(true));
  });
  it ('fucks my shit up fam (by removing eval)', function() {
    assert.equal('undefined', typeof eval);
    assert.equal('undefined', typeof global.eval);
  });
});