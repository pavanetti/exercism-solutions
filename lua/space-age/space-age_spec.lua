local SpaceAge = require('space-age')

describe('space-age', function()

  it('age in seconds', function()
    local age = SpaceAge:new(1000000)
    assert.are.equal(1000000, age.seconds)
  end)

  it('age in Earth years', function()
    local age = SpaceAge:new(1000000000)
    assert.are.equal(31.69, age.on_earth())
  end)

  it('age in Mercury years', function()
    local age = SpaceAge:new(2134835688)
    assert.are.equal(67.65, age.on_earth())
    assert.are.equal(280.88, age.on_mercury())
  end)

  it('age in Venus years', function()
    local age = SpaceAge:new(189839836)
    assert.are.equal(6.02, age.on_earth())
    assert.are.equal(9.78, age.on_venus())
  end)

  it('age in Mars years', function()
    local age = SpaceAge:new(2329871239)
    assert.are.equal(73.83, age.on_earth())
    assert.are.equal(39.25, age.on_mars())
  end)

  it('age in Jupiter years', function()
    local age = SpaceAge:new(901876382)
    assert.are.equal(28.58, age.on_earth())
    assert.are.equal(2.41, age.on_jupiter())
  end)

  it('age in Saturn years', function()
    local age = SpaceAge:new(3000000000)
    assert.are.equal(95.06, age.on_earth())
    assert.are.equal(3.23, age.on_saturn())
  end)

  it('age in Uranus years', function()
    local age = SpaceAge:new(3210123456)
    assert.are.equal(101.72, age.on_earth())
    assert.are.equal(1.21, age.on_uranus())
  end)

  it('age in Neptune year', function()
    local age = SpaceAge:new(8210123456)
    assert.are.equal(260.16, age.on_earth())
    assert.are.equal(1.58, age.on_neptune())
  end)

end)
