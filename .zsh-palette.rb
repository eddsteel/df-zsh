#!/usr/bin/env ruby
#
# Reads the palette text below and prints it
# out.
#


def z_print line
  puts `zsh -c 'print -P -- #{line}'`
end


DATA.each do |line|
  z_print line
end

(1..16).each do |i|
  line = ""
  (1..16).each do |j|
    num = (i-1)*16 + j
    n = num.to_s.rjust 3, '0'
    line += "%F{#{n}}#{n}%f "
  end
  z_print line
end

__END__

%F{123}CYN123%f %F{033}BLU033%f %F{118}GRN118%f %F{135}PPL135%f %F{197}PNK197%f %F{208}ORG208%f %F{226}YLO226%f %F{196}RED196%f
%F{085}CYN085%f %F{027}BLU027%f %F{070}GRN070%f %F{098}PPL098%f %F{161}PNK161%f %F{166}ORG166%f %F{185}YLO185%f %F{124}RED124%f
%F{234}GRY234%f %F{235}GRY235%f %F{238}GRY238%f %F{241}GRY241%f %F{244}GRY244%f %F{247}GRY247%f %F{250}GRY250%f %F{255}GRY255%f



