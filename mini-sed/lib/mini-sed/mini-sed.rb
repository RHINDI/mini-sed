module MiniSed
  def self.delete( quiet, motif, lignes )
    # A COMPLETER.
    nil
  end

  def self.print( quiet, motif, lignes )
    # A COMPLETER.
    nil
  end

  def self.insert( quiet, motif, lignes )
    # A COMPLETER.
    nil
  end

  def self.substitute( quiet, motif, remplacement, global, lignes )
      lignes.select do |ligne|
        if /#{motif}/ =~ ligne
          ligne.send (global ? :gsub! : :sub!),
                     /#{motif}/, remplacement
        end
        !quiet # On emet la ligne sauf si quiet.
      end
  end


end