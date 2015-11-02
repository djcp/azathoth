class Name
  FIRST_PART_SEEDS = %w|
  abs
  aca
  acco
  ada
  add
  adv
  ag
  an
  ax
  bacl
  bact
  bar
  bel
  bep
  bon
  bot
  bril
  brom
  cab
  cad
  cal
  cam
  can
  cap
  car
  cia
  cip
  cod
  cor
  cres
  cyt
  dab
  dac
  dal
  dan
  dec
  def
  dem
  deo
  des
  do
  dor
  dox
  eco
  eda
  eli
  elo
  endo
  epo
  er
  est
  evo
  ezo
  fab
  fam
  fan
  far
  fel
  fen
  fer
  fin
  flu
  foc
  fom
  fur
  gab
  gad
  gan
  gen
  gla
  glu
  gol
  gos
  gua
  gyn
  hae
  hal
  hav
  hema
  hep
  hum
  hyd
  hyz
  ibu
  ico
  ilo
  ima
  imi
  imo
  indo
  inno
  ipra
  is
  iva
  jad
  jal
  jan
  jet
  jub
  jux
  kad
  kal
  kan
  kar
  kem
  kep
  ket
  key
  kin
  kyt
  lab
  lam
  lan
  lat
  let
  leu
  lev
  lex
  lid
  lip
  lop
  lor
  lup
  mac
  mal
  mat
  max
  med
  meno
  mesa
  meta
  meth
  meto
  mino
  mono
  muta
  myca
  nabu
  nado
  nasa
  neo
  nep
  nes
  neu
  nev
  nex
  nif
  nim
  nitro
  nor
  norg
  novo
  nox
  oct
  odo
  ola
  olan
  ombi
  omega
  opti
  ora
  ox
  oxa
  oxy
  pac
  pali
  pan
  para
  pazo
  pega
  peni
  penta
  pimo
  pin
  pita
  poly
  pra
  pran
  pred
  pro
  pseudo
  qual
  que
  quin
  quix
  raba
  rame
  rap
  rebe
  remo
  reta
  rex
  rifa
  rita
  rox
  roxi
  rythm
  ryz
  sab
  sai
  san
  sav
  sax
  scop
  sea
  sec
  sel
  sem
  sero
  seve
  sim
  sin
  sita
  skela
  sodi
  soma
  son
  sot
  spora
  stax
  strep
  sub
  succi
  sulfa
  sup
  symba
  syp
  tab
  tac
  taclo
  tam
  tambo
  tami
  tazo
  tech
  tela
  teno
  testo
  teta
  thali
  theo
  thio
  tiga
  timo
  tob
  tol
  topi
  trama
  trazo
  tria
  tru
  ty
  ul
  ult
  ultra
  ure
  uro
  urso
  uva
  vagi
  val
  vala
  valc
  vali
  vapri
  vase
  vela
  veno
  veno
  vere
  via
  viba
  vico
  vim
  vio
  visi
  vitra
  war
  wel
  well
  west
  xala
  xan
  xeni
  xol
  xope
  xyn
  zada
  zag
  zal
  zana
  zaro
  zena
  zia
  zine
  zithro
  zod
  zof
  zovi
  zycar
  |

    def self.generate
      self.new.generate
  end

  def generate
    first_part + last_part
  end

  def first_part
    output = ''
    [1,2].sample.times do
     output += FIRST_PART_SEEDS.sample
    end
    output
  end

  def last_part
    # Inspiration from: http://www.rxlist.com/drugs/alpha_a.htm
    %w|
    alin
    all
    ase
    ast
    ate
    ax
    cept
    cor
    dil
    dine
    done
    dote
    ella
    ent
    gen
    gra
    ide
    lam
    lin
    line
    lis
    lix
    lol
    mine
    nel
    nil
    ose
    ox
    phen
    phex
    prax
    pril
    prim
    ra
    ral
    rax
    ren
    rex
    rol
    ta
    tab
    tide
    tin
    tine
    to
    tor
    var
    vir
    vox
    zapine
    |.sample
  end
end
