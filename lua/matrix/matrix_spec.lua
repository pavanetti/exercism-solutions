local Matrix = require('matrix')

describe('matrix', function()

  it('should allow rows to be extracted', function()
    local matrix = Matrix('1 2 3\n4 5 6\n7 8 9')
    assert.same({ 1, 2, 3 }, matrix.row(1))
    assert.same({ 4, 5, 6 }, matrix.row(2))
    assert.same({ 7, 8, 9 }, matrix.row(3))
  end)

  it('should allow columns to be extracted', function()
    local matrix = Matrix('1 2 3\n4 5 6\n7 8 9')
    assert.same({ 1, 4, 7 }, matrix.column(1))
    assert.same({ 2, 5, 8 }, matrix.column(2))
    assert.same({ 3, 6, 9 }, matrix.column(3))
  end)

  it('should support values of varying sizes', function()
    local matrix = Matrix('1 2 3\n4 12345 6\n7 8 9')
    assert.same({ 4, 12345, 6 }, matrix.row(2))
    assert.same({ 2, 12345, 8 }, matrix.column(2))
  end)

  it('should support matrices of varying sizes', function()
    local matrix = Matrix('1 2\n3 4\n5 6')
    assert.same({ 3, 4 }, matrix.row(2))
    assert.same({ 2, 4, 6 }, matrix.column(2))
  end)

end)
