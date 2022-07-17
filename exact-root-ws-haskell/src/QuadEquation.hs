module QuadEquation () where
-- import qualified ExactRoot as ER (berechneWurzel, Ergebnis ( .. ))

{--
ax² + bx + c = 0

       -b +- sqrt(b² - 4ac)
x12 = ----------------------
              2a
D = b² + 4ac

D == 0
D < 0
D > 0
--}


data Form = F {
  f_a :: Int,
  f_b :: Int,
  f_c :: Int
}

data Ergebnis = E {
  e_radikand :: Int,
  e_multiplikator :: Int
}

data ErgebnisDiskriminante = ED {
  ed_diskriminante :: Deskriminante,
  ed_anzahlNullstellen :: Int 
}

data Deskriminante = D {
  d_wurzelWert :: Int,
  d_multiplikator :: Int
}

berechne :: Form -> Ergebnis
berechne form = undefined

berechneDiskriminante_ :: Form -> ErgebnisDiskriminante
berechneDiskriminante_ f = ED diskriminante nullstellen
  where diskriminante :: Deskriminante 
        diskriminante = undefined 
        nullstellen :: Int
        nullstellen = 1


pruefeDiskrimente :: Int -> Int
pruefeDiskrimente d
  | d < 0 = 1
  | d > 0 = 1
  | otherwise = 1 


berechneDiskriminante :: Form -> Int
berechneDiskriminante f = berechneRadikand
  where berechneRadikand :: Int 
        berechneRadikand = (b * b) - (4 * a * c)
          where b = f_b f
                a = f_a f
                c = f_c f