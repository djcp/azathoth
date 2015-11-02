class SideEffect
  def self.generate
    self.new.generate
  end

  def disclaimer
    [
      'In some rare cases, may cause',
      'Has been know to cause',
      'Children may experience',
      'The elderly may experience',
      'Women may experience',
      'Men may experience',
      'Some people have experienced',
      'May cause',
      'Many have experienced minor',
    ].sample
  end

  def modifier
    if Kernel.rand(10) + 1 > 3
      [
        'inflamed',
        'elevated',
        'lessened',
        'increased',
        'paranoid',
        'hallucinatory',
        'acute',
        'occasional',
        'infrequent',
        'swollen',
        'septic',
      ].sample + ' '
    else
      ''
    end
  end

  def sideeffect
    modifier + 
      ['cancer',
       'kidney failure',
       'death',
       'dismemberment',
       'heart failure',
       'decapitation',
       'delusions',
       'hepatitis',
       'carcinoma',
       'tumors',
       'dementia',
       'paralysis',
       'edema',
       'cysts',
       'disorders',
       'gout',
    ].sample
  end

  def generate
    disclaimer + ' ' + [ sideeffect, sideeffect, 'and ' + sideeffect].join(', ') + '.'
  end
end
