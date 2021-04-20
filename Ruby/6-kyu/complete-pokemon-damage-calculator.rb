def calculate_damage(your_type, opponent_type, atk, dfn)
  
  # 0: grass | 1: water
  # 2: fire  | 3: electric
  $type = ["grass","water","fire","electric"]
  $map = [[0.5,   2, 0.5,   1],
          [0.5, 0.5,   2, 0.5],
          [  2, 0.5, 0.5,   1],
          [  1,   2,   1, 0.5]]
          
  $effectiveness = $map[($type.index(your_type))][($type.index(opponent_type))]
  $a2d_ratio = atk/dfn
  
  $dmg = (50 * ($a2d_ratio).ceil * $effectiveness)
return $dmg
end
