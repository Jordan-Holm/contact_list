class Contact < ApplicationRecord
    # Model - create table, middle ground to communicate
        # from the app to the dbb, defines rules,
        # defines relationships to other models, 
        # logic having to do with the model

    # Associations - relationships to other models / tables
    # relationship needs to be both models
        # belongs_to
            # only have in child model, describes who parent is
        # has_many
            # only be in parent models, who the children are
            # has many child record for a single parent record
        # has_one
            # only be in parent models, who the children are
            # has one child record for a single parent record
        # has many :through
        # dependent - only on has many and has one and helps trigger logic at a point a action
    has_many :notes, dependent: :destroy
    has_one :address, depend: :destroy

    # Validations - rules or guidelines for a model, help keeps date clean & safe
        # applies to columns
        # validates :name of column, how we're validating
        # dont use booleans
        # confirmation
            # makes sure two fields are the exact same
                # Password and password confirmation
        # inclusion
            # are within a given set
            
        # length
            # makes sure it has enough input length
                # validates :name, length: { minimum}
        # numericality
            # mostly for numbers, make sure its a number time or range
                # validates :points, numericality: true
        # presence
            # makes sure they fill out the fields, can't be blank
                # validates :name, :login, :email, presence: true
        # uniqueness    
            # makes sure it has a unique value in the table 
                # validates :email, uniqueness: true             

    validates :first_name, :last_name, :age, :phone, :email presence: true
    validates :age numericality: { only_integer: true }
    validates :email, uniqueness: true

    # Callbacks - triggers logic based on a event
        # before_validation
        #after_validation
        #around_validation
        # before_create
        # after_create
        # around_create
        # before_save
            #before_save :encrypt_card_number
        # after_save
        # around_save

    # Methods
        # fat models skinny controllers, models is where we put logic

        # class Method

        # instance method

end
