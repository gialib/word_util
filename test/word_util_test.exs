defmodule WordUtilTest do
  use ExUnit.Case
  doctest WordUtil

  test "greets the world" do
    assert WordUtil.hello() == :world
  end
end
