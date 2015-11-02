class Disease
  def self.generate
    self.new.generate
  end

  def generate
    action_clause + ' ' + disease
  end

  def action_clause
    %w|
      alleviates
      reduces
      manages
      lowers
      mitigates
      removes
      lessens
      improves
      raises
      helps
    |.sample

  end

  def modifier
    if (Kernel.rand(10) + 1) < 4
      [
        'acute',
        'chronic',
        'preterm',
        'unspecified',
        'complications from',
        'other congenital',
        'elevated',
        'laceration of',
        'lowered',
        'traumatic',
        'displaced',
        'nondisplaced',
        'adverse',
        'malignant',
        'benign',
        'paralytic',
        'adherent',
        'diffuse',
        'total',
        'perforated'
      ].sample + ' '
    else
      ''
    end
  end

  def disease
    modifier +
    [
      'renal failure',
      'liver damage',
      'blood pressure',
      'cancer',
      'brain damage',
      'sinus pressure',
      'arthritis',
      'heart failure',
      'heart disease',
      'birth defects',
      'pregnancy',
      'psoriasis',
      'exczema',
      'warts',
      'skin blemishes',
      'depression',
      'manic episodes',
      'epilepsy',
      'cerebral palsy',
      'tumors',
      'hepatitis',
      'drug addiction',
      'ulcers',
      'hemorrhages',
      'angina',
      'tooth pain',
      'hypothermia',
      'hyperthermia',
      'bursitis',
      'leg pain',
      'intestinal distress',
      'anal leakage'
    ].sample
  end
end
