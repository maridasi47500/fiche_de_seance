class FicheDeSeance < ApplicationRecord
  after_initialize do
    self.plan = "-\r\n-\r\n\-\r\n"
  end
end
