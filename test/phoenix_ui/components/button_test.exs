defmodule Phoenix.UI.Components.ButtonTest do
  use Phoenix.UI.Case, async: true

  setup do
    [assigns: %{text: "text"}]
  end

  describe "button/1" do
    test "should render with defaults", %{assigns: assigns} do
      markup = ~H"""
      <.button type="button">
        <%= @text %>
      </.button>
      """

      html = rendered_to_string(markup)

      assert html =~ "<button class=\"button "
      assert html =~ "type=\"button\">"
      assert html =~ assigns.text
      assert html =~ "</button>"
    end
  end
end
