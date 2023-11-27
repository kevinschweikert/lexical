defmodule Lexical.Ast.Detection.Import do
  alias Lexical.Ast.Detection
  alias Lexical.Ast.Detection.Directive
  alias Lexical.Document
  alias Lexical.Document.Position

  use Detection

  @impl Detection
  def detected?(%Document{} = document, %Position{} = position) do
    Directive.detected?(document, position, 'import')
  end
end
