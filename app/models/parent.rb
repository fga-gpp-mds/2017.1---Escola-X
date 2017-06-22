#File name: parent.rb
#Class name: Parent
#Description:Validates parent's attributes
class Parent < ApplicationRecord
  has_many :alumns
  validates :parent_cpf, :cpf => false
  has_secure_password
  before_save :validates_password
  before_save :set_login
  before_save :set_password


  validates :name, presence: { message: "não pode estar em branco" },
            length: { minimum: 5,
                      maximum: 64,
                     :too_short => "deve possuir no mínimo 5 caracteres",
                     :too_long => "deve possuir no máximo 64 caracteres" }

  validates :address,
             length: { minimum: 5,
                       maximum: 64,
                       :too_short => "deve possuir no mínimo 5 caracteres",
                       :too_long => "deve possuir no máximo 64 caracteres" }

  validates :phone, length: { in: 10..11,
                              :too_short => "deve possuir no mínimo 10 dígitos",
                              :too_long => "deve possuir no máximo 11 dígitos" }

  validates :gender, presence: { message: "Não pode estar em branco." }

  before_create{
    generate_token(:authorization_token)
  }

  def get_age
    DateTime.now.year - self.birth_date.year
  end

  private
  def validates_password
    if self.password_digest.nil?
      validates :password, presence:true,
      length: { minimum: 8}
    end
  end

  def set_login
    names = Array.new
    names = self.name.split(' ')
    self.login = names[0]+"."+names[names.length-1]
  end

  def set_password
    name = self.name.downcase!
    names = Array.new
    names = name.split(' ')
    
    self.password = "1234" + names[0][0] + names[names.length-1][0]
  end

  def generate_token(column)
    begin
      self[column]= SecureRandom.urlsafe_base64
    end while Parent.exists?(column => self[column])
  end

end
