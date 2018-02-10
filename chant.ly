\version "2.18.2"
\language "english"

#(set-global-staff-size 17)

global = {
  \key ef \major
  
  s1*3 \bar "||"
  s1*4 \bar "||"
  s1*3 \bar "||"
  s1*4 \bar "|."
}

soprano = \relative c'' {
  bf1 ef2 c d1
  bf1 c2 af bf g f1
  af1 df2 bf c1
  f,1 bf2 g af f ef1
}

alto = \relative c' {
  ef1 ef2 f f1
  ef1 ef2 f d ef d1
  c1 f2 ef ef1
  d1 d2 ef ef d ef1
}

tenor = \relative c' {
  g1 g2 a bf1
  g1 af2 c bf bf bf1
  af1 af2 g af1
  bf1 bf2 c c af g1
}

bass = \relative c {
  ef1 c2 f bf,1
  ef1 af2 f g ef bf1
  f'1 df2 ef af,1
  af'1 g2 c, f bf, ef1
}

\header {
  composer = "Stanford"
  tagline = ##f
}

\paper {
  indent = 0
  left-margin = 1.5\cm
  right-margin = 1.5\cm
}

\layout {
  \context {
    \Score
    \override TimeSignature.stencil = ##f
  }
}

\score {
  <<
    \new StaffGroup <<
      \new Staff <<
        \new Voice << \global \voiceOne \soprano >>
        \new Voice << \global \voiceTwo \alto >>
      >>
      \new Staff <<
        \clef bass
        \new Voice << \global \voiceOne \tenor >>
        \new Voice << \global \voiceTwo \bass >>
      >>
    >>
  >>
}
