Feature: Substitution de motif dans un flux de lignes
  De facon a traiter des fichiers de texte comme sed
  Je veux pouvoir effectuer des substitutions avec un motif

Scenario: Le motif contient une expression reguliere
          simple et plusieurs fichiers vides

  Given a file named "foo.txt" with:
  """
  aaax2xaax2
  bar
  foo
  abcabc12
  abcabc33
  abcabc32zz
  """
  And a file named "vide.txt" with:
  """
  """
  When j'execute `mini-sed  substitute -g "[abc]*.[12]" "XX" vide.txt foo.txt vide.txt vide.txt`
  Then the exit status should be 0
  And the stdout should contain exactly:
  """
  XXxXX
  bar
  foo
  XX
  abcabc33
  XXzz

  """